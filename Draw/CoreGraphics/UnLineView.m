//
//  UnLineView.m
//  Draw
//
//  Created by bfme on 2017/3/17.
//  Copyright © 2017年 BFMe. All rights reserved.
//

#import "UnLineView.h"

@implementation UnLineView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGContextRef ref = UIGraphicsGetCurrentContext();
    CGContextBeginPath(ref);
    // 起点
    CGContextMoveToPoint(ref, 100, 70);
    /*
     cpx cpy  控制点
     x y 终点
     */
    CGContextAddQuadCurveToPoint(ref, 150, 100, 200, 40);
    
    CGContextSetLineWidth(ref, 5);
    CGContextSetStrokeColorWithColor(ref, [UIColor brownColor].CGColor);
    CGContextStrokePath(ref);
}

@end
