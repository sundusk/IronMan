//
//  IMPhotoViewController.m
//  IronMan
//
//  Created by sundusk on 2018/4/4.
//  Copyright © 2018年 sundusk. All rights reserved.
//  照片

#import "IMPhotoViewController.h"
#import "IMLogViewController.h"
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
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
