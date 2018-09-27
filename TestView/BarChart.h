//
//  BarChart.h
//  TestView
//
//  Created by Ibrahim Mehkri on 2018-09-26.
//  Copyright © 2018 Ibrahim Mehkri. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BarChart : UIView

@property NSArray *data;
@property int maxHeight; 

-(instancetype)initWithFrame:(CGRect)frame data: (NSArray*)data; 

@end

