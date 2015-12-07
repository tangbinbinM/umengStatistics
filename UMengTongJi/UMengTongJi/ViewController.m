//
//  ViewController.m
//  Day17_1_UMengTongJi
//
//  Created by jiyingxin on 15/10/30.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "ViewController.h"
#import "MobClick.h"

@interface ViewController ()
@end
@implementation ViewController
//统计用户进入此界面的时长，频率等
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [MobClick beginLogPageView:@"ViewController"];
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [MobClick endLogPageView:@"ViewController"];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    假设按钮点击，卖书。  统计自定义事件
//    卖
    [MobClick beginEvent:@"BooKSale"];
//    成功卖出
    [MobClick endEvent:@"BooKSale"];
//    只有 有begin 有end  才算一次
//   故意数组越界崩溃⬇️
//    @[][6];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
