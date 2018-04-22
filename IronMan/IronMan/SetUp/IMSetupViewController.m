//
//  IMSetupViewController.m
//  IronMan
//
//  Created by sundusk on 2018/4/4.
//  Copyright © 2018年 sundusk. All rights reserved.
//  个人设置

#import "IMSetupViewController.h"
#import "IMLogViewController.h"
@interface IMSetupViewController ()

@end

@implementation IMSetupViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    self.navigationItem.title = @"个人设置";
    [self setupUI];
}
- (void)setupUI{
    
    UIButton *button = [[UIButton alloc]init];
    [self.view addSubview:button];
    [button setTitle:@"退出登录" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(logOut) forControlEvents:UIControlEventTouchUpInside];
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
    }];
}
// 退出登录
- (void)logOut{
//    //删除偏好设置
//    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//    [defaults removeObjectForKey:@"one"];
    
    BOOL one = NO;
    //获取用户偏好设置对象
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    //存储数据
    [defaults setBool:one forKey:@"one"];
    
    // 退到登录页面
    IMLogViewController *login = [[IMLogViewController alloc]init];
    [self presentViewController:login animated:YES completion:nil];
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
