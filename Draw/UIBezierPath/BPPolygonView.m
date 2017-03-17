//
//  BPPolygonView.m
//  Draw
//
//  Created by bfme on 2017/3/17.
//  Copyright © 2017年 BFMe. All rights reserved.
//

#import "BPPolygonView.h"

@implementation BPPolygonView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    UIBezierPath *path = [UIBezierPath bezierPath];
    [[UIColor redColor] set];
    path.lineWidth = 5.0;
    
    // 起点
    [path moveToPoint:CGPointMake(100, 10)];
    
    // 绘制线条
    [path addLineToPoint:CGPointMake(100, 60)];
    [path addLineToPoint:CGPointMake(80, 70)];
    [path addLineToPoint:CGPointMake(50, 60)];
    [path addLineToPoint:CGPointMake(30, 60)];
    [path closePath];//第五条线通过调用closePath方法得到的
    
    //根据坐标点连线
    [path stroke];
//    [path fill];
}
 
@end
