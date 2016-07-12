
//
//  MyView.m
//  GuideToFurther
//
//  Created by heivr.mxy on 16/7/12.
//  Copyright © 2016年 heivr.mxy. All rights reserved.
//

#import "MyView.h"
#import "UIImage+RoundedCorner.h"
@implementation MyView

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self creatImage];
    }
    return self;
}
//圆角，解决离屏渲染
- (void)creatImage{
    
    UIImageView *myimage = [[UIImageView alloc]initWithFrame:self.frame];
    UIImage *image = [[UIImage alloc]init];
    
    image = [UIImage imageNamed:@"1"];
    
    image =  [image imageWithRoundedCornersAndSize:CGSizeMake(100, 200) andCornerRadius:10.0];
    
    myimage.image = image;
    
//    myimage.layer.cornerRadius = 10.0;
//    myimage.layer.masksToBounds = YES;
    [self addSubview:myimage];
    
}
@end
