//
//  SWEssenceViewController.m
//  Fuck-Test
//
//  Created by 石伟 on 16/5/24.
//  Copyright © 2016年 石伟. All rights reserved.
//

#import "SWEssenceViewController.h"

@interface SWEssenceViewController ()

@end

@implementation SWEssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置导航条的title
    self.navigationItem.titleView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    //设置导航工具
    self.navigationItem.leftBarButtonItem=[UIBarButtonItem itemWithImage:@"MainTagSubIcon" hightImage:@"MainTagSubIconClick" target:self action:@selector(tagClick)];
    self.view.backgroundColor=SWGOLBALColor;
    SWLogFunc;
}


-(void)tagClick
{
    SWLog(@"监听");
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
