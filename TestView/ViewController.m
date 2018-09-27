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
    
    CGSize size = self.view.bounds.size;
    CGPoint origin = self.view.bounds.origin;
    
    CGRect frame = CGRectMake(origin.x, origin.y + 200, size.width, size.height);
    
    BarChart *subView = [[BarChart alloc]initWithFrame:frame];
    
    subView.data = @[@15, @45, @20, @250, @150, @90, @35, @300, @400, @325]; 
    
    subView.backgroundColor = [UIColor clearColor]; 
    
    [self.view addSubview:subView];
}


@end
