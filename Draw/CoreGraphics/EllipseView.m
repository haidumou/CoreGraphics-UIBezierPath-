//
//  EllipseView.m
//  Draw
//
//  Created by bfme on 2017/3/16.
//  Copyright © 2017年 BFMe. All rights reserved.
//

#import "EllipseView.h"

@implementation EllipseView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGContextRef ref = UIGraphicsGetCurrentContext();
    /*
     rect 坐标位置 长宽相等即为圆
     */
    CGContextAddEllipseInRect(ref, CGRectMake((WIDTH(self) - 60)/2, (HEIGHT(self) - 40)/2, 60, 40));
    [[UIColor redColor] set];
    CGContextFillPath(ref);
}


@end
