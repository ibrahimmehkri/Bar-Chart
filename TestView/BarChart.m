//
//  BarChart.m
//  TestView
//
//  Created by Ibrahim Mehkri on 2018-09-26.
//  Copyright © 2018 Ibrahim Mehkri. All rights reserved.
//

#import "BarChart.h"

@implementation BarChart

-(instancetype)initWithFrame:(CGRect)frame data:(NSArray *)data{
    self = [super initWithFrame:frame];
    
    if(self){
        NSMutableArray *values = [@[]mutableCopy];
        for (int i = 0; i < data.count; i++) {
            [values addObject:data[i][@"value"]];
        }
        NSNumber *maxNumber = [values valueForKeyPath:@"@max.self"];
        self.maxHeight = maxNumber.intValue;
        self.data = values;
        
    }
    return self; 
}

- (void)drawRect:(CGRect)rect{
    
        float x = 30;
    
    for (int i = 0; i < self.data.count; i++) {
        
        float y = (self.maxHeight - [self.data[i] intValue]);
        float height = [self.data[i] intValue];
        float width = (self.bounds.size.width/self.data.count)-30;
        
        CGRect barFrame = CGRectMake(x, y, width, height);
        
        UIBezierPath *path = [UIBezierPath bezierPathWithRect:barFrame];
        
        [[[UIColor alloc]initWithRed:1.0 green:0.0 blue:0.0 alpha:0.5] setFill];
        
        [path fill];
        
        x += width+15;
        
    }
    
    
    /*
     [10, 20, 50, 30];
     
     x axis increases by 70 each time.
     
     y axis increases by 20 + (100-value)
     */
}

@end
