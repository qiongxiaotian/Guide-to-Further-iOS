//
//  Car.m
//  GuideToFurther
//
//  Created by heivr.mxy on 16/7/7.
//  Copyright © 2016年 heivr.mxy. All rights reserved.
//

#import "Car.h"

@implementation Car

static Car *_car;

+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    
    static dispatch_once_t onceTocken;
    dispatch_once(&onceTocken, ^{
        _car = [super allocWithZone:zone];
    });
    return _car;
}
+ (instancetype)shareCar{
    static dispatch_once_t onectTocken;
    dispatch_once(&onectTocken, ^{
        _car = [[Car alloc]init];
    });
    return _car;
}

@end
