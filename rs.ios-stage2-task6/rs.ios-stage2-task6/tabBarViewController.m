//
//  tabBarViewController.m
//  rs.ios-stage2-task6
//
//  Created by Илья Козлов on 6/24/20.
//  Copyright © 2020 Илья Козлов. All rights reserved.
//

#import "tabBarViewController.h"
#import "NavigationFirstViewController.h"
#import "TestTableViewController.h"
@interface tabBarViewController ()

@end

@implementation tabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor redColor];
    

    
    
    UITabBarController *tabBarVC=[UITabBarController new];
    
    UINavigationController *galleryViewController=[[UINavigationController alloc]initWithRootViewController:[NavigationFirstViewController new]];
    galleryViewController.tabBarItem=[[UITabBarItem alloc] initWithTitle:@"" image:[UIImage imageNamed:@"gallery_selected"] tag:0];
    
    UINavigationController *testTableViewController=[[UINavigationController alloc]initWithRootViewController:[TestTableViewController new]];
    testTableViewController.tabBarItem=[[UITabBarItem alloc] initWithTitle:@"" image:[UIImage imageNamed:@"gallery_selected"] tag:0];
    
    
    tabBarVC.viewControllers=@[galleryViewController,testTableViewController];
    
    [self.view addSubview:tabBarVC.view];
    

    // Do any additional setup after loading the view.
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
