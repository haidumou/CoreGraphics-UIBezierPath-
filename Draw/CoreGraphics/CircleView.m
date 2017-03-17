//
//  CircleView.m
//  Draw
//
//  Created by bfme on 2017/3/16.
//  Copyright © 2017年 BFMe. All rights reserved.
//

#import "CircleView.h"

@implementation CircleView

- (void)drawRect:(CGRect)rect
{
    CGContextRef ref = UIGraphicsGetCurrentContext();
    // 画圆
    CGContextAddEllipseInRect(ref, CGRectMake((WIDTH(self) - HEIGHT(self))/2, 0, HEIGHT(self), HEIGHT(self)));
    // 着色
    [[UIColor greenColor] set];
    
    /*
     context表示要作画的内容
     offset表示阴影的位置
     blur表示阴影的模糊度
     color表示图形要填充的颜色
     */
    CGContextSetShadowWithColor(ref, CGSizeMake(10, 0), 20.0f, [[UIColor redColor] CGColor]);
    // 渲染
    CGContextFillPath(ref);
    
    // 添加空心
    CGContextAddEllipseInRect(ref, CGRectMake((WIDTH(self)-30)/2, (HEIGHT(self)-30)/2,  30, 30));
    [[UIColor whiteColor] set];
    CGContextFillPath(ref);
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
