//
//  ViewController.m
//  GuideToFurther
//
//  Created by heivr.mxy on 16/7/5.
//  Copyright © 2016年 heivr.mxy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong)UIView *redView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _redView = [UIView new];
    
    _redView.frame = CGRectMake(0, 200, 200, 200);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
