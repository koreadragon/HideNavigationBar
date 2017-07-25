//
//  TransNavigationViewController.m
//  EPBoxChannelApp
//
//  Created by koreadragon on 2017/6/8.
//  Copyright © 2017年 EPBox. All rights reserved.
//

#import "TransNavigationViewController.h"

@interface TransNavigationViewController ()<UINavigationControllerDelegate,UIGestureRecognizerDelegate>

@end

@implementation TransNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.interactivePopGestureRecognizer.delegate = self;
    self.delegate = self;

    
}
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (animated) {
        self.interactivePopGestureRecognizer.delegate = self;
    }
    [super pushViewController:viewController animated:animated];
}

-(NSArray<UIViewController *> *)popToViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (animated) {
        self.interactivePopGestureRecognizer.delegate = self;
    }
    return [super popToViewController:viewController animated:animated];
}
-(NSArray<UIViewController *> *)popToRootViewControllerAnimated:(BOOL)animated{
    if (animated) {
        self.interactivePopGestureRecognizer.delegate = self;
    }
    return [super popToRootViewControllerAnimated:animated];
}
-(void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
    [self.interactivePopGestureRecognizer setEnabled:YES];
    
}

-(BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer{
    if (gestureRecognizer == self.interactivePopGestureRecognizer && self.viewControllers.count < 2) {
        return NO;
    }
    return YES;
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
