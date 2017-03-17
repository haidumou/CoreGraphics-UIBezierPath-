//
//  StringView.m
//  Draw
//
//  Created by bfme on 2017/3/16.
//  Copyright © 2017年 BFMe. All rights reserved.
//

#import "StringView.h"

@implementation StringView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    NSString *str = @"来啊，快活啊，放有大把时间。。。";
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[NSForegroundColorAttributeName] = [UIColor whiteColor]; // 文字颜色
    dict[NSFontAttributeName] = [UIFont systemFontOfSize:14]; // 字体
    
    [str drawInRect:CGRectMake(20, 20, 300, 40) withAttributes:dict];
}
 
@end
