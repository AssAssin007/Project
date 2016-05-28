//
//  SWFriendViewController.m
//  Fuck-Test
//
//  Created by 石伟 on 16/5/24.
//  Copyright © 2016年 石伟. All rights reserved.
//

#import "SWFriendViewController.h"

@interface SWFriendViewController ()

@end

@implementation SWFriendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title=@"关注";
    
    self.navigationItem.leftBarButtonItem=[UIBarButtonItem itemWithImage:@"friendsRecommentIcon" hightImage:@"friendsRecommentIcon-click" target:self action:@selector(trendClick)];
    self.view.backgroundColor=SWGOLBALColor;
    SWLogFunc;
    
}


-(void)trendClick
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
