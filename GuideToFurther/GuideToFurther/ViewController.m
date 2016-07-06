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
@property (nonatomic,strong)UIView *yellowView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    _redView = [UIView new];
//    _redView.frame = CGRectMake(0, 200, 200, 200);
//    _redView.backgroundColor = [UIColor redColor];
//    [self.view addSubview:_redView];
//    
//    _yellowView = [UIView new];
//    //设置宽高是灵活的
//    _yellowView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
//    _yellowView.frame = CGRectInset(_redView.bounds, 20, 20);
//    _yellowView.backgroundColor = [UIColor yellowColor];
//    [_redView addSubview:_yellowView];
    
    //图中黄色的View是红色View的子View，那么，如果我期望无论红色View变大还是变小，黄色View距离红色View的边距总是不变的，该怎么做呢？
//    设置黄色View的autoresizingMask属性，设置为UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight，这样设置的结果是黄色View的宽高会随着父View宽高的改变而改变，但是不改变间距。

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
