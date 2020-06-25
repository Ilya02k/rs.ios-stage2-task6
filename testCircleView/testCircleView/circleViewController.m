//
//  circleViewController.m
//  testCircleView
//
//  Created by Илья Козлов on 6/22/20.
//  Copyright © 2020 Илья Козлов. All rights reserved.
//

#import "circleViewController.h"

@interface circleViewController ()

@property(nonatomic,strong) UILabel *articleLabel;
@property(nonatomic,strong) UIView *circleView;
@property(nonatomic,strong) UIView *squareView;
@property(nonatomic,strong) UIView *triangleView;
@property(nonatomic,strong) UIStackView *mainStackView;
@end


@implementation circleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    self.articleLabel=[UILabel new];
       self.articleLabel.font=[UIFont systemFontOfSize:24 weight:UIFontWeightMedium];
       self.articleLabel.text=@"Are you ready?";

      // [self.articleLabel setFont:[UIFont fontWithName:@"Calibri" size:100]];//[UIFont fontWithName:@"Medium" size:24];
      
       [self.view addSubview:self.articleLabel];
      // [self makeConstraintsForLabel];
       ////
       self.circleView=[[UIView alloc] initWithFrame:CGRectMake(0, 0, 70, 70)];
       self.circleView.backgroundColor = [UIColor redColor];
       self.circleView.layer.cornerRadius = 100;
       
       ////
       self.squareView=[[UIView alloc] initWithFrame:CGRectMake(0, 0, 70, 70)];
       self.squareView.backgroundColor=[UIColor blueColor];
       
       ////
       UIBezierPath* trianglePath = [UIBezierPath bezierPath];
       [trianglePath moveToPoint:CGPointMake(0,70)];
       [trianglePath addLineToPoint:CGPointMake(35,0)];
       [trianglePath addLineToPoint:CGPointMake(70, 70)];
       [trianglePath closePath];
       
       CAShapeLayer *triangleMaskLayer = [CAShapeLayer layer];
       [triangleMaskLayer setPath:trianglePath.CGPath];

       self.triangleView = [[UIView alloc] initWithFrame:CGRectMake(0,0, 70, 70)];

       self.triangleView.backgroundColor = [UIColor greenColor];
       self.triangleView.layer.mask = triangleMaskLayer;
       ///
       
       
    
       UIStackView * figuresStack=[UIStackView new];
      
       //spacing
       

       [figuresStack addArrangedSubview:self.circleView];
       [figuresStack addArrangedSubview:self.squareView];
       [figuresStack addArrangedSubview:self.triangleView];
    
          figuresStack.axis=UILayoutConstraintAxisHorizontal;
          figuresStack.alignment=UIStackViewAlignmentCenter;
          figuresStack.distribution=UIStackViewDistributionEqualCentering;
    
    [self.view addSubview:figuresStack];
    
    figuresStack.translatesAutoresizingMaskIntoConstraints=NO;
       
       [figuresStack.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor].active=YES;
       [figuresStack.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor].active=YES;
       [figuresStack.topAnchor constraintEqualToAnchor:self.view.topAnchor].active=YES;
       [figuresStack.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor].active=YES;
   // [self makeConstraintsForFiguresStack];

}

/*-(void) makeConstraintsForFiguresStack{
    figuresStack.translatesAutoresizingMaskIntoConstraints=NO;
    
    [figuresStack.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor].active=YES;
    [figuresStack.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor].active=YES;
    [figuresStack.topAnchor constraintEqualToAnchor:self.view.topAnchor].active=YES;
    [figuresStack.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor].active=YES;
}*/


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
