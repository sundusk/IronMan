//
//  IMPhotoViewController.m
//  IronMan
//
//  Created by sundusk on 2018/4/4.
//  Copyright © 2018年 sundusk. All rights reserved.
//  照片

#import "IMPhotoViewController.h"
#import "IMLogViewController.h"
#import "CTApperanceViewController.h"

@interface IMPhotoViewController ()

@end

@implementation IMPhotoViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 1.获取偏好设置对象
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    // 2.读取数据
    BOOL one = [defaults boolForKey:@"one"];
    
    if (one != YES) {
        
        IMLogViewController *login = [[IMLogViewController alloc]init];
        [self presentViewController:login animated:NO completion:nil];
    }
    
    self.view.backgroundColor = [UIColor greenColor];
    self.navigationItem.title = @"相册";
    
    
    UIButton *iPhoneButton = [[UIButton alloc]init];
    iPhoneButton.backgroundColor = [UIColor yellowColor];
    [iPhoneButton addTarget:self action:@selector(BthClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:iPhoneButton];
    [iPhoneButton setTitle:@"手机详情" forState:UIControlStateNormal];
    [iPhoneButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    iPhoneButton.titleLabel.font = [UIFont systemFontOfSize:10];
    
    [iPhoneButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.centerY.equalTo(self.view);
    }];
    
    
    
    
}
- (void)BthClick:(UIButton *)btn{
    NSLog(@"点击跳转到此页面");
    
    UIViewController *vc;
    vc = (UIViewController *)[CTApperanceViewController new];
    [self.navigationController pushViewController:vc animated:YES];
   
}






//- (void)assetsPickerController:(CTAssetsPickerController *)picker didFinishPickingAssets:(NSArray *)assets
//{
//
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
