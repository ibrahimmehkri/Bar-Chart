//
//  CustomView.m
//  TestView
//
//  Created by Ibrahim Mehkri on 2018-09-26.
//  Copyright © 2018 Ibrahim Mehkri. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

- (void)drawRect:(CGRect)rect{
    CGRect bounds = self.bounds;
    
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width/2.0;
    center.y = bounds.origin.y + bounds.size.height/2.0;
    
    float radius = MIN(bounds.size.width, bounds.size.height)/2.0;
    
    UIBezierPath *path = [[UIBezierPath alloc]init];
    
    for (float maxRadius = radius; maxRadius > 0; maxRadius -= 20) {
        
        [path moveToPoint:CGPointMake(center.x + maxRadius, center.y)];
        
        [path addArcWithCenter:center radius:maxRadius startAngle:0.0 endAngle:M_PI*2.0 clockwise:YES];
        
        [[UIColor darkGrayColor] setStroke];
    
        path.lineWidth = 5.0;
    
    }
    
    [path stroke];
}

@end
