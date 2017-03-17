//
//  ArcView.m
//  Draw
//
//  Created by bfme on 2017/3/16.
//  Copyright © 2017年 BFMe. All rights reserved.
//

#import "ArcView.h"
@implementation ArcView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGContextRef ref = UIGraphicsGetCurrentContext();
    //画笔线的颜色
//    CGContextSetRGBStrokeColor(ref, 0.30, 0.62, 0.30, 1);
    CGContextSetStrokeColorWithColor(ref, [UIColor blueColor].CGColor);

    //线的宽度
    CGContextSetLineWidth(ref, 5.0);
    /*
     1弧度＝180°/π （≈57.3°）
     度＝弧度×180°/π
     360°＝ 360×π/180 ＝2π 弧度
     
     然后:
     x,y为圆点坐标，radius半径，startAngle为开始的弧度，endAngle为 结束的弧度，clockwise 0为顺时针，1为逆时针。
     */
    CGContextAddArc(ref, self.center.x, 40, 35, 0, 1.5*M_PI, 0); //中心y坐标不能是self.center.y why ？
    //绘制路径
    CGContextDrawPath(ref, kCGPathStroke);
}


@end
