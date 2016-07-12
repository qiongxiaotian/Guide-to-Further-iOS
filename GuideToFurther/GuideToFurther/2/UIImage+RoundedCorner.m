//
//  UIImage+RoundedCorner.m
//  GuideToFurther
//
//  Created by heivr.mxy on 16/7/12.
//  Copyright © 2016年 heivr.mxy. All rights reserved.
//

#import "UIImage+RoundedCorner.h"

@implementation UIImage (RoundedCorner)
- (UIImage *)imageWithRoundedCornersAndSize:(CGSize)sizeToFit andCornerRadius:(CGFloat )radius{
    
    CGRect rect = (CGRect ){0.f ,0.f, sizeToFit};
    
    //生成透明的图形
    UIGraphicsBeginImageContextWithOptions(sizeToFit,NO,UIScreen.mainScreen.scale);
    //生成路径
    CGContextAddPath(UIGraphicsGetCurrentContext(), [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:radius].CGPath);
    //剪辑
    CGContextClip(UIGraphicsGetCurrentContext());
    
    [self drawInRect:rect];
    
    //创建图片接收
    UIImage *output = UIGraphicsGetImageFromCurrentImageContext();
    //结束上下文
    UIGraphicsEndImageContext();
    
    return output;
}

@end
