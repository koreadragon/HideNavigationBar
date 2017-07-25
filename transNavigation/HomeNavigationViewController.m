//
//  HomeNavigationViewController.m
//  transNavigation
//
//  Created by koreadragon on 2017/6/8.
//  Copyright © 2017年 koreadragon. All rights reserved.
//

#import "HomeNavigationViewController.h"

@interface HomeNavigationViewController ()

@end

@implementation HomeNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    self.navigationBar.shadowImage = [UIImage new];
    
    //自定义返回按钮图标
    UIImage *backIndicator = [UIImage imageNamed:@"navigationbar_back_withtext"];
    backIndicator = [backIndicator imageWithRenderingMode:UIImageRenderingModeAutomatic];
//    backIndicator = [backIndicator imageWithAlignmentRectInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
    self.navigationBar.backIndicatorImage = backIndicator;
    
    self.navigationBar.backIndicatorTransitionMaskImage = backIndicator;
//
    
}

-(void)poppop{
    if (self.viewControllers.count > 1) {
        [self popViewControllerAnimated:YES];
    }
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
