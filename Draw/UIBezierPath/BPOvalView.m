//
//  BPOvalView.m
//  Draw
//
//  Created by bfme on 2017/3/17.
//  Copyright © 2017年 BFMe. All rights reserved.
//

#import "BPOvalView.h"

@implementation BPOvalView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    UIColor *color = [UIColor colorWithRed:0 green:0 blue:0.7 alpha:1];
    [color set];
    
    UIBezierPath *path1 = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(20, 20, 40, 40)];
    path1.lineWidth = 8.0;
    [path1 stroke];
    
    UIBezierPath *path2 = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(120, 20, 80, 40)];
    path2.lineWidth = 8.0;
    [path2 stroke];
}

@end
