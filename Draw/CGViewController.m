//
//  CGViewController.m
//  Draw
//
//  Created by bfme on 2017/3/17.
//  Copyright © 2017年 BFMe. All rights reserved.
//

#import "CGViewController.h"
#import "LineView.h"
#import "UnLineView.h"
#import "CircleView.h"
#import "EllipseView.h"
#import "ArcView.h"
#import "DashLineView.h"
#import "RectangleView.h"
#import "StringView.h"

/*
 0 CGContextRef context = UIGraphicsGetCurrentCont ext(); 设置上下文
 1 CGContextMoveToPoint 开始画线
 2 CGContextAddLineToPoint 画直线
 4 CGContextAddEllipseInRect 画一椭圆(长宽相同极为圆)
 4 CGContextSetLineCap 设置线条终点形状
 4 CGContextSetLineDash 画虚线
 4 CGContextAddRect 画一方框
 4 CGContextStrokeRect 指定矩形
 4 CGContextStrokeRectWithWidth 指定矩形线宽度
 4 CGContextStrokeLineSegments 一些直线
 5 CGContextAddArc 画一曲线 前俩点为中心 中间俩点为起始弧度 最后一数据为0则顺时针画 1则逆时针
 5 CGContextAddArcToPoint(context,0,0, 2, 9, 40);//先画俩线从point 到 第1点 ， 从第1点到第2点的线    切割里面的圆
 6 CGContextSetShadowWithColor 设置阴影
 7 CGContextSetRGBFillColor  只填充颜色
 7 CGContextSetRGBStrokeColor 画笔颜色设置
 7 CGContextSetFillColorSpace 颜色空间填充
 7 CGConextSetStrokeColorSpace 颜色空间画笔设置
 8 CGContextFillRect 补充当前填充颜色的rect
 8 CGContextSetAlaha 透明度
 9 CGContextTranslateCTM 改变画布位置
 10 CGContextSetLineWidth 设置线的宽度
 11 CGContextAddRects 画多个线
 12 CGContextAddQuadCurveToPoint 画曲线
 13 CGContextStrokePath 开始绘制 图片
 13 CGContextDrawPath 设置绘制模式
 14 CGContextClosePath 封闭当前线路
 15 CGContextTranslateCTM(context, 0, rect.size.height);        CGContextScaleCTM(context, 1.0, -1.0);反转画布
 16 CGContextSetInterpolatio nQuality 背景内置颜色质量等级
 16 CGImageCreateWithImageIn Rect 从原图片中取小图
 */

/*
 画完图后,必须
 先用CGContextStrokePath来描线,即形状
 后用CGContextFillPath来填充形状内的颜色.
 填充一个路径的时候，路径里面的子路径都是独立填充的。
 假如是重叠的路径，决定一个点是否被填充，有两种规则
 1,nonzero winding number rule:非零绕数规则，假如一个点被从左到右跨过，计数器+1，从右到左跨过，计数器-1，最后，如果结果是0，那么不填充，如果是非零，那么填充。
 2,even-odd rule: 奇偶规则，假如一个点被跨过，那么+1，最后是奇数，那么要被填充，偶数则不填充，和方向没有关系。
 
 CGContextEOFillPath
 使用奇偶规则填充当前路径
 CGContextFillPath
 使用非零绕数规则填充当前路径
 CGContextFillRect
 填充指定的矩形
 CGContextFillRects
 填充指定的一些矩形
 CGContextFillEllipseInRe ct
 填充指定矩形中的椭圆
 CGContextDrawPath
 两个 参数 决定填充规则，kCGPathFill表示用非零绕数规则，kCGPathEOFill表示用奇偶规则，kCGPathFillStroke表示填充，kCGPathEOFillStroke表示描线，不是填充
 设置当一个颜色覆盖上另外一个颜色，两个颜色怎么混合
 默认方式是
 result = (alpha * foreground) + (1 - alpha) * background
 CGContextSetBlendMode :设置blend mode.
 CGContextSaveGState :保存blend mode.
 CGContextRestoreGState:在没有保存之前，用这个函数还原blend mode.
 CGContextSetBlendMode 混合俩种颜色
 */

@interface CGViewController ()

@end

@implementation CGViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    scrollView.backgroundColor = [UIColor darkGrayColor];
    [self.view addSubview:scrollView];
    
    NSArray *array = @[@"LineView", @"UnLineView", @"CircleView", @"EllipseView", @"ArcView", @"DashLineView", @"RectangleView", @"StringView"];
    
    for (int i = 0; i < array.count; i++) {
        Class class = NSClassFromString(array[i]);
        if (class) {
            UIView *view = [[class alloc] initWithFrame:CGRectMake(10, 64+100*i, kScreenWidth-20, 80)];
            view.backgroundColor = [UIColor lightGrayColor];
            [scrollView addSubview:view];
        }
    }
    [scrollView setContentSize:CGSizeMake(kScreenWidth, 1000)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
