//
//  SWNavigationController.m
//  Fuck-Test
//
//  Created by 石伟 on 16/5/27.
//  Copyright © 2016年 石伟. All rights reserved.
//

#import "SWNavigationController.h"

@implementation SWNavigationController
+(void)initialize
{

    UINavigationBar *bar=[UINavigationBar appearance];
    [bar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];
}

-(void)viewDidLoad
{
    [super viewDidLoad];
    
}


-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    //如果push进来的不是第一个控制器
    if (self.childViewControllers.count>0) {
                UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
        [button setTitle:@"返回" forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"navigationButtonReturn"] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"navigationButtonReturnClick"] forState:UIControlStateHighlighted];
        button.size=CGSizeMake(30, 30);
        
        //让按钮左面的内容全部左对齐
        button.contentHorizontalAlignment=UIControlContentHorizontalAlignmentLeft;
        
        button.contentEdgeInsets=UIEdgeInsetsMake(0, -10, 0, 0);
        
        //设置文字的普通状态和高亮状态
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        
        //给button设置个监听
        [button addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        viewController.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc] initWithCustomView:button];
    }
    //这句话要放在后面，让viewController可以覆盖上面设置的barbuttonitem
    [super pushViewController:viewController animated:animated];

    
}

//实现back
-(void)back
{
    [self popViewControllerAnimated:YES];
}


@end
