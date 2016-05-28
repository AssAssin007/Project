//
//  SWTabBarController.m
//  Fuck-Test
//
//  Created by 石伟 on 16/5/24.
//  Copyright © 2016年 石伟. All rights reserved.
//

#import "SWTabBarController.h"
#import "SWEssenceViewController.h"
#import "SWFriendViewController.h"
#import "SWMeViewController.h"
#import "SWNewViewController.h"
#import "SWTabbar.h"
#import "SWNavigationController.h"
@interface SWTabBarController ()

@end

@implementation SWTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    //通过appearenance统一设置UITabBarItem的文字属性
    //后面带有UI_APPEARANCE_SELECTOR的方法, 都可以通过appearance对象来统一设置
    
    //正常状态下的属性
    NSMutableDictionary *attrs=[NSMutableDictionary dictionary];
    attrs[NSFontAttributeName]=[UIFont systemFontOfSize:12];
    attrs[NSForegroundColorAttributeName]=[UIColor grayColor];
    
    //点击状态下的属性
    NSMutableDictionary *selAttrs=[NSMutableDictionary dictionary];
    selAttrs[NSFontAttributeName]=attrs[NSFontAttributeName];
    selAttrs[NSForegroundColorAttributeName]=[UIColor darkGrayColor];
    
    UITabBarItem *item=[UITabBarItem appearance];
    [item setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [item setTitleTextAttributes:selAttrs forState:UIControlStateSelected];
    
    [self setupChildrenVc:[[SWEssenceViewController alloc] init] title:@"精华" image:@"tabBar_essence_icon" selectedImage:@"tabBar_essence_click_icon"];
    [self setupChildrenVc:[[SWNewViewController alloc] init] title:@"新帖" image:@"tabBar_new_icon" selectedImage:@"tabBar_new_click_icon"];
    [self setupChildrenVc:[[SWFriendViewController alloc] init] title:@"关注" image:@"tabBar_friendTrends_icon" selectedImage:@"tabBar_friendTrends_click_icon"];
    [self setupChildrenVc:[[SWMeViewController alloc] init] title:@"我" image:@"tabBar_me_icon" selectedImage:@"tabBar_me_click_icon"];
    
    //如果对象的属性是只读，可以使用kvc通过设置_某方法重新设置它的值
    [self setValue:[[SWTabbar alloc] init] forKey:@"tabBar"];
    
}


//抽取一个创建子控制器的方法
-(void)setupChildrenVc:(UIViewController *)vc title:(NSString *)title image:(NSString *)image  selectedImage:(NSString *)selectedImage
{
    
    vc.tabBarItem.title=title;
    vc.tabBarItem.image=[UIImage imageNamed:image];
    vc.tabBarItem.selectedImage=[UIImage imageNamed:selectedImage];
    SWNavigationController *nav=[[SWNavigationController alloc] initWithRootViewController:vc];
    [self addChildViewController:nav];

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
