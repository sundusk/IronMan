//
//  IMTabViewController.m
//  IronMan
//
//  Created by sundusk on 2018/4/4.
//  Copyright © 2018年 sundusk. All rights reserved.
//

#import "IMTabViewController.h"
#import "IMNavViewController.h"
#import "IMLogViewController.h"
@interface IMTabViewController ()



@end

@implementation IMTabViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
    
   
    
    
        // 添加自控制器
        
        UIViewController *photoController = [self controllerWith:@"IMPhotoViewController" title:@"相册" imageName:@"TabBar_HomeBar"];
        
        UIViewController *phoneViewController = [self controllerWith:@"IMPhoneViewController" title:@"手机" imageName:@"TabBar_Businesses"];
        
        UIViewController *diaryViewController = [self controllerWith:@"IMDiaryViewController" title:@"日记" imageName:@"TabBar_Assets"];
        
        UIViewController *setupViewController = [self controllerWith:@"IMSetupViewController" title:@"个人设置" imageName:@"TabBar_Friends"];
        //
        //
        self.viewControllers=@[photoController,phoneViewController,diaryViewController,setupViewController];
    
    
   
    
}

-(UIViewController *)controllerWithStoryboard:(NSString *)storyboardName title:(NSString*) title imageName:(NSString *)imageName{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    UIViewController *businessController = [sb instantiateInitialViewController];
    return [self controller:businessController WithTitle:title imageName:imageName];
}
-(UIViewController *)controllerWith:(NSString *)className title:(NSString *)title imageName:(NSString *)imageName{
    Class clz = NSClassFromString(className);
    UIViewController *controller = [[clz alloc]init];
    
    return [self controller:controller WithTitle:title imageName:imageName];
}
- (UIViewController *)controller:(UIViewController *)controller WithTitle:(NSString *)title imageName:(NSString *)imageName{
    
    controller.tabBarItem.title = title;
    controller.tabBarItem.image = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    controller.tabBarItem.selectedImage = [[UIImage imageNamed:[NSString stringWithFormat:@"%@_Sel",imageName]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    IMNavViewController *navController = [[IMNavViewController alloc]initWithRootViewController:controller];
    
    
    return navController;
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
