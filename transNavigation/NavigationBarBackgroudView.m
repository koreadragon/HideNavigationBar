//
//  NavigationBarBackgroudView.m
//  transNavigation
//
//  Created by koreadragon on 2017/6/8.
//  Copyright © 2017年 koreadragon. All rights reserved.
//

#import "NavigationBarBackgroudView.h"

@implementation NavigationBarBackgroudView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype)initWithFrame:(CGRect)frame{
    CGSize size = [UIScreen mainScreen].bounds.size;
    self = [super initWithFrame:CGRectMake(0, 0, size.width, 64.0)];
    if (self) {
        
    }
    
    return self;
}

@end
