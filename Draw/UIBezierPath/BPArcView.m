//
//  BPArcView.m
//  Draw
//
//  Created by bfme on 2017/3/17.
//  Copyright © 2017年 BFMe. All rights reserved.
//

#import "BPArcView.h"

@implementation BPArcView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [[UIColor redColor] set];
    /*
     center 圆形
     radius 半径
     startAngle 起始角
     endAngle 弧度
     clockwise 顺时针1 逆时针0
     */
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(80, 40)
                                                        radius:40
                                                    startAngle:0
                                                      endAngle:0.5*M_PI
                                                     clockwise:NO];
    
    path.lineWidth = 5.0;
    [path stroke];
}

@end
