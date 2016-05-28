//
//  SWTabbar.m
//  Fuck-Test
//
//  Created by 石伟 on 16/5/25.
//  Copyright © 2016年 石伟. All rights reserved.
//

#import "SWTabbar.h"
/*
 通过kvc自定义tabbar
 **/

@interface SWTabbar()
@property(nonatomic,weak)UIButton * publishButton;

@end
@implementation SWTabbar
//
-(instancetype)initWithFrame:(CGRect)frame
{
    if (self=[super initWithFrame:frame]) {
        
        [self setBackgroundImage:[UIImage imageNamed:@"tabbar-light"]];
        UIButton * button1=[UIButton buttonWithType:UIButtonTypeCustom];
        [button1 setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"]  forState:UIControlStateNormal];
        [button1 setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        [self addSubview:button1];
        self.publishButton=button1;
        
    }
    
    return self;
}


-(void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat width=self.width;
    CGFloat height=self.height;
    
    /**设置发布按钮的frame*/
    self.publishButton.width=self.publishButton.currentBackgroundImage.size.width;
    self.publishButton.height=self.publishButton.currentBackgroundImage.size.height;
    self.publishButton.center=CGPointMake(width *0.5, height *0.5);

    //设置其他button
    
    ;
    CGFloat buttonY=0;
    CGFloat buttonW=width/5;
    CGFloat buttonH=height;
    NSInteger index=0;
    for (UIView *button in self.subviews) {
        if (![button isKindOfClass:NSClassFromString(@"UITabBarButton")]) continue;
        
        CGFloat buttonX=buttonW *((index>1)?(index+1):index);
        button.frame=CGRectMake(buttonX, buttonY, buttonW, buttonH);
        
        index++;
        
    }
}

@end
