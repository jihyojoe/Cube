//
//  NavigationController.m
//  Cube
//
//  Created by silent on 15/10/26.
//  Copyright © 2015年 joe. All rights reserved.
//

#import "NavigationController.h"

@interface NavigationController ()

@end

@implementation NavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setNavigationAttribute];
    // Do any additional setup after loading the view.
}

- (void)setNavigationAttribute{
    //set navigationBar BackgroundColor
    [self.navigationBar setBarTintColor:[UIColor colorWithHexString:@"#ff5f64"]];
    //set navigationBar translucent is no;不透明
    self.navigationBar.translucent = NO;
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
