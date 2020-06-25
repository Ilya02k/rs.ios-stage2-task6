//
//  NavigationFirstViewController.m
//  rs.ios-stage2-task6
//
//  Created by Илья Козлов on 6/25/20.
//  Copyright © 2020 Илья Козлов. All rights reserved.
//

#import "NavigationFirstViewController.h"

@interface NavigationFirstViewController ()

//@property(nonatomic,strong) UITableView *tableVC;

@end

@implementation NavigationFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
   
    
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self initializationFirstNavigationItem];
    
    
    
}

-(void)initializationFirstNavigationItem{
    [self.navigationItem setTitle:@"GALLERY"];
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
