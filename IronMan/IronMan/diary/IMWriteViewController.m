//
//  IMWriteViewController.m
//  IronMan
//
//  Created by sundusk on 2018/4/23.
//  Copyright © 2018年 sundusk. All rights reserved.
//  撰写日记
#import "IMWriteViewController.h"

#define DWScreenHeight [UIScreen mainScreen].bounds.size.height/9
@interface IMWriteViewController ()



@end

@implementation IMWriteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    self.view.backgroundColor = [UIColor redColor];
    [self setupUI];
    
    
    
    
 
    
}

-(void)setupUI{
    
    UIView *topView = [[UIView alloc]init];// 顶部视图
    [self.view addSubview:topView];
    [topView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.width.equalTo(self.view);
        make.height.offset(DWScreenHeight);
    }];
    topView.backgroundColor = [UIColor blueColor];
    
    UIButton *disButton = [[UIButton alloc]init];// 返回按钮
    [topView addSubview:disButton];
    [disButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.equalTo(topView);
        make.left.equalTo(topView.mas_left).offset(20);
        
    }];
    
    [disButton setTitle:@"返回" forState:UIControlStateNormal];
    [disButton setTintColor:[UIColor whiteColor]];
    [disButton addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *saveButton = [[UIButton alloc]init];//保存按钮
    [topView addSubview:saveButton];
    [saveButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.equalTo(topView);
        make.right.equalTo(topView.mas_right).offset(-20);
        
    }];
    
    [saveButton setTitle:@"保存" forState:UIControlStateNormal];
    [saveButton setTintColor:[UIColor whiteColor]];
    [saveButton addTarget:self action:@selector(save) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton *button = [[UIButton alloc]init];//保存按钮
    [topView addSubview:button];
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(topView);
        
    }];
    
    NSDateFormatter *formater = [[ NSDateFormatter alloc] init];
    NSDate *curDate = [NSDate date];//获取当前日期
    [formater setDateFormat:@"yyyy-MM-dd"];//这里去掉 具体时间 保留日期
    NSString * curTime = [formater stringFromDate:curDate];
    NSLog(@"%@",curTime);
    
    [button setTitle:curTime forState:UIControlStateNormal];
    [button setTintColor:[UIColor whiteColor]];
    
    
}
// 返回日记浏览页面
- (void)click{
    [self dismissViewControllerAnimated:YES completion:nil];
}
// 保存日记
- (void)save{
    NSLog(@"保存");
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
