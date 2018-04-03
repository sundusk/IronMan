//
//  ViewController.m
//  IronMan
//
//  Created by sundusk on 2018/4/3.
//  Copyright © 2018年 sundusk. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "IMLogViewController.h"
#import "HJLoginExample04_VC.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    self.view.backgroundColor = [UIColor redColor];
    int token = 0;
    if (token == 1) {
        NSLog(@"登录成功");
        
        
    }else{
        NSLog(@"登录失败");
        IMLogViewController *VC = [[IMLogViewController alloc]init];

        [self presentViewController:VC animated:YES completion:nil];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
