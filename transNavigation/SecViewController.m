//
//  SecViewController.m
//  transNavigation
//
//  Created by koreadragon on 2017/6/8.
//  Copyright © 2017年 koreadragon. All rights reserved.
//

#import "SecViewController.h"

@interface SecViewController ()

@end

@implementation SecViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.navigationItem.title = @"第2个页面";
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    Search*view = [[Search alloc]initWithFrame:CGRectMake(0, 0, UIScreen.mainScreen.bounds.size.width-120, 44)];
//    view.backgroundColor = [UIColor cl];
    self.navigationItem.titleView = view;
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    ThirdViewController*third = [ThirdViewController new];
    [self.navigationController pushViewController:third animated:YES];
}
-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.tintColor = nil;
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
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
