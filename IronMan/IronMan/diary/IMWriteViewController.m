//
//  IMWriteViewController.m
//  IronMan
//
//  Created by sundusk on 2018/4/23.
//  Copyright © 2018年 sundusk. All rights reserved.
//  撰写日记
#import "IMWriteViewController.h"


@interface IMWriteViewController ()



@end

@implementation IMWriteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    self.view.backgroundColor = [UIColor redColor];
    [self setupUI];
    
}

-(void)setupUI{
    UIButton *button = [[UIButton alloc]init];
    [self.view addSubview:button];
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.centerY.equalTo(self.view);
    }];
    
    [button setTitle:@"退出" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    
}
- (void)click{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
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
