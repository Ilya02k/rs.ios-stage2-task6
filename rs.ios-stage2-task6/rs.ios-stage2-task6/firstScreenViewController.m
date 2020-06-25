//
//  firstScreenViewController.m
//  rs.ios-stage2-task6
//
//  Created by Илья Козлов on 6/21/20.
//  Copyright © 2020 Илья Козлов. All rights reserved.
//

#import "firstScreenViewController.h"
#import "tabBarViewController.h"
@interface firstScreenViewController ()

@property(nonatomic,strong) UILabel *articleLabel;
@property(nonatomic,strong) UIView *circleView;
@property(nonatomic,strong) UIView *squareView;
@property(nonatomic,strong) UIView *triangleView;
@property(nonatomic,strong) UIStackView *mainStackView;
@property(nonatomic,strong) tabBarViewController *childVC;

@end

@implementation firstScreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    self.view.backgroundColor=[UIColor whiteColor];
    
    self.articleLabel=[UILabel new];
    
    [self.articleLabel.widthAnchor constraintEqualToConstant:170].active=YES;
    [self.articleLabel.heightAnchor constraintEqualToConstant:60].active=YES;
    
    self.articleLabel.font=[UIFont systemFontOfSize:24 weight:UIFontWeightMedium];
    self.articleLabel.text=@"Are you ready?";
    
    
    
    
    ////
    self.circleView=[UIView new];
    
    [self.circleView.widthAnchor constraintEqualToConstant:70].active=YES;
    [self.circleView.heightAnchor constraintEqualToConstant:70].active=YES;
    self.circleView.backgroundColor = [UIColor redColor];
    self.circleView.layer.cornerRadius = 35;
    

    
    ////
    self.squareView=[UIView new];
    [self.squareView.widthAnchor constraintEqualToConstant:70].active=YES;
    [self.squareView.heightAnchor constraintEqualToConstant:70].active=YES;
    self.squareView.backgroundColor=[UIColor blueColor];
    
    ////
    UIBezierPath* trianglePath = [UIBezierPath bezierPath];
    [trianglePath moveToPoint:CGPointMake(0,70)];
    [trianglePath addLineToPoint:CGPointMake(35,0)];
    [trianglePath addLineToPoint:CGPointMake(70, 70)];
    [trianglePath closePath];
    
    CAShapeLayer *triangleMaskLayer = [CAShapeLayer layer];
    [triangleMaskLayer setPath:trianglePath.CGPath];

    self.triangleView = [UIView new];
    [self.triangleView.widthAnchor constraintEqualToConstant:70].active=YES;
    [self.triangleView.heightAnchor constraintEqualToConstant:70].active=YES;

    self.triangleView.backgroundColor = [UIColor greenColor];
    self.triangleView.layer.mask = triangleMaskLayer;
    
    [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionRepeat animations:^{ self.triangleView.transform=CGAffineTransformRotate(self.triangleView.transform, M_PI);
    } completion:^(BOOL finished) {
        
    }];
    
    
    ///
    

    
    UIButton *startButton=[UIButton new];
  
    [startButton.widthAnchor constraintEqualToConstant:360].active=YES;
    [startButton.heightAnchor constraintEqualToConstant:55].active=YES;
    startButton.backgroundColor = [UIColor yellowColor];
    [startButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    startButton.layer.cornerRadius = 20;
    
    [startButton setTitle:@"START" forState:UIControlStateNormal];
    startButton.titleLabel.font=[UIFont systemFontOfSize:20 weight:UIFontWeightMedium];
    
    [self.view addSubview:startButton];
    [startButton addTarget:self action:@selector(tapHandle) forControlEvents:UIControlEventTouchUpInside];
    
    
 
    UIStackView * figuresStack=[UIStackView new];
    figuresStack.axis=UILayoutConstraintAxisHorizontal;
    figuresStack.alignment=UIStackViewAlignmentCenter;
    figuresStack.distribution=UIStackViewDistributionEqualCentering;
    figuresStack.spacing=45;
   
    

    [figuresStack addArrangedSubview:self.circleView];
    [figuresStack addArrangedSubview:self.squareView];
    [figuresStack addArrangedSubview:self.triangleView];
 
    
    
    
    self.mainStackView=[UIStackView new];
    self.mainStackView.axis=UILayoutConstraintAxisVertical;
    self.mainStackView.alignment=UIStackViewAlignmentCenter;
    self.mainStackView.distribution=UIStackViewDistributionEqualCentering;
    //spacing
    self.mainStackView.spacing=0;
    
    [self.mainStackView addArrangedSubview:self.articleLabel];
    [self.mainStackView addArrangedSubview:figuresStack];
    [self.mainStackView addArrangedSubview:startButton];
    
    [self.view addSubview:self.mainStackView];
    [self makeConstraintsForMainStackView];
    
   
}


-(void)makeConstraintsForMainStackView{
    
    self.mainStackView.translatesAutoresizingMaskIntoConstraints=NO;
    
    [self.mainStackView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor].active=YES;
    [self.mainStackView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor].active=YES;
    [self.mainStackView.topAnchor constraintLessThanOrEqualToAnchor: self.view.topAnchor constant:200].active=YES;
    [self.mainStackView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-100].active=YES;
    
}

-(void)tapHandle{
    
    self.childVC = [[tabBarViewController alloc] init];
    [self addChildViewController:self.childVC];
    [self.view addSubview:self.childVC.view];
    [self makeConstraintsForChildVC];
    [self.childVC didMoveToParentViewController:self];
    
}

-(void) makeConstraintsForChildVC{
    
    self.childVC.view.translatesAutoresizingMaskIntoConstraints=NO;
    
    [self.childVC.view.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor].active=YES;
    [self.childVC.view.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor].active=YES;
    [self.childVC.view.topAnchor constraintEqualToAnchor: self.view.topAnchor constant:0].active=YES;
    [self.childVC.view.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:0].active=YES;
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
