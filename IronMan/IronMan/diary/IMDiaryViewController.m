//
//  IMDiaryViewController.m
//  IronMan
//
//  Created by sundusk on 2018/4/4.
//  Copyright © 2018年 sundusk. All rights reserved.
//  日记

#import "IMDiaryViewController.h"

@interface IMDiaryViewController ()

@end

@implementation IMDiaryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blueColor];
    self.navigationItem.title = @"日记";
     [self.view addSubview:[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bgd"]]];
}

- (void)setupUI{
    
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
