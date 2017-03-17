//
//  BPViewController.m
//  Draw
//
//  Created by bfme on 2017/3/17.
//  Copyright © 2017年 BFMe. All rights reserved.
//

#import "BPViewController.h"
#import "BPRectangleView.h"
#import "BPOvalView.h"
#import "BPPolygonView.h"
#import "BPArcView.h"
#import "BPUnArcView.h"


@interface BPViewController ()

@end

@implementation BPViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    scrollView.backgroundColor = [UIColor darkGrayColor];
    [self.view addSubview:scrollView];
    
    NSArray *array = @[@"BPRectangleView", @"BPOvalView", @"BPPolygonView", @"BPArcView", @"BPUnArcView"];
    
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
