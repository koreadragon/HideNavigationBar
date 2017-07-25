//
//  Search.m
//  transNavigation
//
//  Created by koreadragon on 2017/6/8.
//  Copyright © 2017年 koreadragon. All rights reserved.
//

#import "Search.h"

@implementation Search

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


-(instancetype)initWithFrame:(CGRect)frame{
//    self = [super initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 44)];
    self = [super initWithFrame:frame];
    if (self) {
        [self initView];
    }
    return self;
}

-(void)initView{
    UISegmentedControl*seg = [[UISegmentedControl alloc]initWithItems:@[@"🍎",@"🚬",@"🍺"]];
    [self addSubview:seg];
    
    seg.backgroundColor = [UIColor clearColor];
//    [seg setTitle:@"one" forSegmentAtIndex:0];
    [seg mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.width.mas_equalTo(self.mas_width).multipliedBy(0.8);
        make.height.mas_equalTo(25);
        make.center.mas_equalTo(self);
//        make.centerX.mas_equalTo(self.mas_centerX);
//         make.centerY.mas_equalTo(self.mas_centerY).with.offset(10);
//        make.bottom.mas_equalTo(self.mas_bottom);
 
    }];
}

@end
