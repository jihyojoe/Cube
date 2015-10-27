//
//  TabBarController.m
//  Cube
//
//  Created by silent on 15/10/26.
//  Copyright © 2015年 joe. All rights reserved.
//

#import "TabBarController.h"
#import "NavigationController.h"
#import "HomeViewController.h"
#import "FormulaViewController.h"

@interface TabBarController (){
    HomeViewController *homeVc;
    FormulaViewController *formulaVc;
}

@end

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //添加所有自控制器
    [self addAllChildViewController];
    // Do any additional setup after loading the view.
}

- (void)addAllChildViewController{
    //初始化控制器
    homeVc = [[HomeViewController alloc]init];
    formulaVc = [[FormulaViewController alloc]init];
    //添加HomeViewController
    [self addChildViewControllers:homeVc tabBarTitle:@"首页" norImage:@"TabBar_Home" selectedImage:@"TabBar_HomeSelected" navTitle:@"首页"];
    //添加formulaViewController
    [self addChildViewControllers:formulaVc tabBarTitle:@"公式" norImage:@"TabBar_Profile" selectedImage:@"TabBar_Profile" navTitle:@"公式"];
    
}

- (void)addChildViewControllers:(UIViewController *)vc tabBarTitle:(NSString *)tabBarTitle norImage:(NSString *)norImage selectedImage:(NSString *)selectedImage navTitle:(NSString *)navTitle{
    
    //
    UINavigationController *nav = [[NavigationController alloc] initWithRootViewController:vc];
    //设置tabBarTitle
    vc.tabBarItem.title = tabBarTitle;
    //设置tabBar图片不被渲染
    self.tabBar.tintColor = [UIColor colorWithHexString:@"#ff5f64"];
    //设置navigationController Title Label
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 200, 200)];
    label.text = navTitle;
    label.textColor = [UIColor whiteColor];
    [label sizeToFit];
    label.center = CGPointMake(self.view.bounds.size.width/2, self.view.bounds.size.height/2);
    vc.navigationItem.titleView = label;
    
    
    //设置默认图片
    vc.tabBarItem.image = [[UIImage imageNamed:norImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //添加到父控制器
    [self addChildViewController:nav];
    
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
