//
//  HideViewController.m
//  transNavigation
//
//  Created by koreadragon on 2017/6/9.
//  Copyright © 2017年 koreadragon. All rights reserved.
//

#import "HideViewController.h"

@interface HideViewController ()

@end

@implementation HideViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

-(void)changeBackFont{
    NSArray*sons = self.navigationController.navigationBar.subviews;
    for (UIView* obj in sons) {
        
        if ([obj isKindOfClass:NSClassFromString(@"UINavigationItemView")]) {
            for (UILabel*label in obj.subviews) {
                NSLog(@"文字是:%@",label.text);
                
                label.font = [UIFont systemFontOfSize:12.0];
            }
        }
    }

}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    //不隐藏导航栏
//    self.navigationItem.hidesBackButton = YES;
//    self.navigationController.navigationBar.backIndicatorImage = [UIImage imageNamed:@"cm2_icn_back"];
    [self changeBackFont];
}


//
//-(void)viewWillDisappear:(BOOL)animated{
//    [super viewWillDisappear:animated];
//    [self.navigationController setNavigationBarHidden:NO animated:YES];
//}

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
