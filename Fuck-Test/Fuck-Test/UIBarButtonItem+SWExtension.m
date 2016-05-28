//
//  UIBarButtonItem+SWExtension.m
//  Fuck-Test
//
//  Created by 石伟 on 16/5/26.
//  Copyright © 2016年 石伟. All rights reserved.
//

#import "UIBarButtonItem+SWExtension.h"

@implementation UIBarButtonItem (SWExtension)
+(instancetype)itemWithImage:(NSString *)image hightImage:(NSString *)hightImage target:(id)target action:(SEL)action
{
    UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
    //button按钮的正常状态
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    
    //button按钮的高亮状态
    [button setBackgroundImage:[UIImage imageNamed:hightImage] forState:UIControlStateHighlighted];
    button.size=button.currentBackgroundImage.size;
    
    //添加监听事件
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[self alloc] initWithCustomView:button];
}
@end
