//
//  BPRectangleView.m
//  Draw
//
//  Created by bfme on 2017/3/17.
//  Copyright © 2017年 BFMe. All rights reserved.
//

#import "BPRectangleView.h"

@implementation BPRectangleView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [[UIColor redColor] setFill];
    UIRectFill(CGRectMake(20, 20, 100, 50));
    
    [[UIColor redColor] set]; //设置线条颜色
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(150, 20, 100, 50)];
    
    path.lineWidth = 8.0;
    path.lineCapStyle = kCGLineCapRound; //线条拐角
    path.lineJoinStyle = kCGLineJoinRound; //终点处理
    [path stroke];
}

@end
