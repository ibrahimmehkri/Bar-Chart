//
//  ViewController.m
//  TestView
//
//  Created by Ibrahim Mehkri on 2018-09-26.
//  Copyright © 2018 Ibrahim Mehkri. All rights reserved.
//

#import "ViewController.h"
#import "BarChart.h"

@interface ViewController ()

@property NSMutableArray *data;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *data = @[@{@"name": @"january",
        
        @"value": @100},
      
      @{@"name": @"february",
        
        @"value": @80},
      
      @{@"name": @"mars",
        
        @"value": @130}];
    
    
    
    CGSize size = self.view.bounds.size;
    CGPoint origin = self.view.bounds.origin;
    
    CGRect frame = CGRectMake(origin.x, origin.y + 200, size.width, size.height);
    
    BarChart *chart = [[BarChart alloc]initWithFrame:frame data:data];
    
    chart.backgroundColor = [UIColor clearColor]; 
    
    [self.view addSubview:chart];
}


@end
