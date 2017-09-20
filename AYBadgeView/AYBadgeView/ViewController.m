//
//  ViewController.m
//  AYBadgeView
//
//  Created by Yang on 2017/9/20.
//  Copyright © 2017年 Tucodec. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIView * view = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 150, 150)];
    view.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:view];
    view.ayBadge = [AYBadgeLabel shareInstance_Badge];
    view.ayBadge.badgeNumber = 10;
    
    
    UIBarButtonItem * right = [[UIBarButtonItem alloc] initWithTitle:@"点击" style:0 target:self action:nil];
    self.navigationItem.rightBarButtonItem = right;
//    请注意，必须在第28行代码完成之后，才能设置badge。经过测试发现，只有28行代码执行完成后，UIBarButtonItem中才有视图，系统是在set方法中添加UIBarButtonItem的子视图。
    right.ayBadge = [AYBadgeLabel shareInstance_Badge];
    right.ayBadge.badgeNumber = 10;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
