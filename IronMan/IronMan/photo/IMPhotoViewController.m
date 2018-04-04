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
    
    int one = 1;
    if (one == 1) {
        
        IMLogViewController *VC = [[IMLogViewController alloc]init];
        
        [self presentViewController:VC animated:NO completion:nil];
        
    }
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
        self.view.backgroundColor = [UIColor greenColor];
        self.navigationItem.title = @"相册";
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
