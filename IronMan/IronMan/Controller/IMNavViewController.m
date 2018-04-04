//
//  IMNavViewController.m
//  IronMan
//
//  Created by sundusk on 2018/4/4.
//  Copyright © 2018年 sundusk. All rights reserved.
//

#import "IMNavViewController.h"

@interface IMNavViewController ()

@end

@implementation IMNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 取消导航栏下面的分割线
    [self.navigationBar setBackgroundImage:[[UIImage alloc]init] forBarMetrics:UIBarMetricsDefault];
    
    // 如果上面设置空的背景图片和空的阴影图片，必须设置translucent为NO才能够看到背景颜色
    self.navigationBar.translucent = NO;
    
    // 导航条的颜色
    self.navigationBar.barTintColor = [UIColor grayColor];
    
    
    // 导航栏标题的颜色
    [self.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//导航控制器不再统一设置状态栏的样式了。显示的是哪个控制器，就由哪个控制器自己设置
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}



@end
