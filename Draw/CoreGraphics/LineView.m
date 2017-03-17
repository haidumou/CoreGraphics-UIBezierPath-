//
//  LineView.m
//  Draw
//
//  Created by bfme on 2017/3/16.
//  Copyright © 2017年 BFMe. All rights reserved.
//

#import "LineView.h"

@implementation LineView

- (void)drawRect:(CGRect)rect
{
    // 1.获取上下文
    CGContextRef ref = UIGraphicsGetCurrentContext();
    
    CGContextMoveToPoint(ref, 20, 40); // 起点
    CGContextAddLineToPoint(ref, WIDTH(self)-20, 40); //终点
    //    CGContextSetRGBStrokeColor(ref, 0, 1.0, 0, 1.0); // 颜色
    [[UIColor redColor] set]; // 两种设置颜色的方式都可以
    CGContextSetLineWidth(ref, 2.0f); // 线的宽度
    CGContextSetLineCap(ref, kCGLineCapRound); // 起点和终点圆角
    CGContextSetLineJoin(ref, kCGLineJoinRound); // 转角圆角
    CGContextStrokePath(ref); // 渲染（直线只能绘制空心的，不能调用CGContextFillPath(ref);）
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
