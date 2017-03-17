//
//  RectangleView.m
//  Draw
//
//  Created by bfme on 2017/3/16.
//  Copyright © 2017年 BFMe. All rights reserved.
//

#import "RectangleView.h"

@implementation RectangleView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGContextRef ref = UIGraphicsGetCurrentContext();
    
    CGContextAddRect(ref, CGRectMake((WIDTH(self)-100)/2, (HEIGHT(self)-50)/2, 100, 50));
    [[UIColor orangeColor] set];
    CGContextStrokePath(ref); // 空心
    CGContextFillPath(ref);
}

@end
