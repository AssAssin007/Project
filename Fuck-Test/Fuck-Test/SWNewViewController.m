//
//  SWNewViewController.m
//  Fuck-Test
//
//  Created by 石伟 on 16/5/24.
//  Copyright © 2016年 石伟. All rights reserved.
//

#import "SWNewViewController.h"

@interface SWNewViewController ()

@end

@implementation SWNewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [super viewDidLoad];
    self.navigationItem.titleView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
