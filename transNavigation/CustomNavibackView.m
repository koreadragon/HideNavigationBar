//
//  CustomNavibackView.m
//  transNavigation
//
//  Created by koreadragon on 2017/6/9.
//  Copyright © 2017年 koreadragon. All rights reserved.
//

#import "CustomNavibackView.h"

@implementation CustomNavibackView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:CGRectMake(0, 0, UIScreen.mainScreen.bounds.size.width, 64)]) {
//        [self buttons];
    }
    return self;
}


/**
 创建子buttons
 */
//-(void)buttons{
//    UIButton*backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [self addSubview:backBtn];
//    [backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//        
//        make.left.mas_equalTo(self.mas_left);
//        make.height.mas_equalTo(44);
//        make.bottom.mas_equalTo(self.mas_bottom);
//        make.width.mas_equalTo(44);
//        
//    }];
//    backBtn
//    
//}

@end
