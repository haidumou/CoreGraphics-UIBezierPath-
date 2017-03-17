//
//  DashLineView.m
//  Draw
//
//  Created by bfme on 2017/3/16.
//  Copyright © 2017年 BFMe. All rights reserved.
//

#import "DashLineView.h"

@implementation DashLineView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGContextRef ref = UIGraphicsGetCurrentContext();
    
    CGContextSetLineWidth(ref, 5.0);
    CGContextSetStrokeColorWithColor(ref, [UIColor blueColor].CGColor);
    
    CGFloat dashArray[] = {2,6,4,2};
    /*
     context   – 这个不用多说
     phase     - phase参数表示在第一个虚线绘制的时候跳过多少个点
     lengths   – lengths的值｛2,6,4,2｝表示先绘制2个点，再跳过6个点，绘制4个点，跳过2个点，绘制2个点，以此往复
     count     – 注意count的值等于lengths数组的长度
     */
    CGContextSetLineDash(ref, 3, dashArray, 4);
    CGContextMoveToPoint(ref, 20, 40); // 起点
    CGContextAddLineToPoint(ref, WIDTH(self)-20, 40); //终点
    CGContextStrokePath(ref);
}

@end
