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
//    
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
//    
    //图中黄色的View是红色View的子View，那么，如果我期望无论红色View变大还是变小，黄色View距离红色View的边距总是不变的，该怎么做呢？
//    设置黄色View的autoresizingMask属性，设置为UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight，这样设置的结果是黄色View的宽高会随着父View宽高的改变而改变，但是不改变间距。
//    
//    UILabel *namelabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 30)];
//    namelabel.text = @"　永和九年，岁在癸丑，暮春之初，会于会稽山阴之兰亭，修禊事也。群贤毕至，少长咸集。此地有崇山峻岭，茂林修竹；又有清流激湍，映带左右，引以为流觞曲水，列坐其次。虽无丝竹管弦之盛，一觞一咏，亦足以畅叙幽情。是日也，天朗气清，惠风和畅，仰观宇宙之大，俯察品类之盛，所以游目骋怀，足以极视听之娱，信可乐也。//拒绝变高的优先级";
//    namelabel.numberOfLines = 0;
//    NSStringDrawingOptions options =  NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading;
//    
//
////    CGRect namerect = [namelabel.text boundingRectWithSize:CGSizeMake(300,CGFLOAT_MAX ) options:options attributes:@{NSForegroundColorAttributeName: [UIFont systemFontOfSize:15]} context:nil ];
//    CGRect namerect = [namelabel.text boundingRectWithSize:CGSizeMake(300,CGFLOAT_MAX ) options:options attributes:nil context:nil ];
//
//    
////    namelabel.bounds = namerect;
//    namelabel.frame = CGRectMake(0, 100, namerect.size.width, namerect.size.height*2);
//    namelabel.backgroundColor = [UIColor redColor];
//    [self.view addSubview:namelabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
