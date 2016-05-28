//
//  SWMeViewController.m
//  Fuck-Test
//
//  Created by 石伟 on 16/5/24.
//  Copyright © 2016年 石伟. All rights reserved.
//

#import "SWMeViewController.h"

@interface SWMeViewController ()

@end

@implementation SWMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title=@"我";
    
   
    
    UIBarButtonItem *settingitem=[UIBarButtonItem itemWithImage:@"mine-setting-icon" hightImage:@"mine-setting-icon-click" target:self action:@selector(settingClick)];
    UIBarButtonItem *nightItem=[UIBarButtonItem itemWithImage:@"mine-moon-icon" hightImage:@"mine-moon-icon-click" target:self action:@selector(nightClick)];
    
    
    self.navigationItem.rightBarButtonItems=@[settingitem,nightItem];
    self.view.backgroundColor=SWGOLBALColor;
    SWLogFunc;
}


-(void)settingClick
{
    SWLogFunc;
}

-(void)nightClick
{
    SWLogFunc;
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
