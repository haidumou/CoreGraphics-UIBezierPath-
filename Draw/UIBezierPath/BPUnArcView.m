//
//  BPUnArcView.m
//  Draw
//
//  Created by bfme on 2017/3/17.
//  Copyright © 2017年 BFMe. All rights reserved.
//

#import "BPUnArcView.h"

@implementation BPUnArcView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    UIBezierPath *path = [UIBezierPath bezierPath];
    [[UIColor redColor] set];
    
    // 二次贝塞尔曲线
    path.lineWidth = 2.0;
    [path moveToPoint:CGPointMake(20, 60)];
    [path addQuadCurveToPoint:CGPointMake(120, 60) controlPoint:CGPointMake(70, 0)];
    [path stroke];
    
    [path moveToPoint:CGPointMake(150, 10)];
    [path addQuadCurveToPoint:CGPointMake(300, 70) controlPoint:CGPointMake(200, 60)];
    [path stroke];
    
    // 三次贝塞尔曲线
    [path moveToPoint:CGPointMake(140, 60)];
    [path addCurveToPoint:CGPointMake(300, 20) controlPoint1:CGPointMake(200, 0) controlPoint2:CGPointMake(220, 80)];
    [path stroke];
}

@end
