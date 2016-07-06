//
//  NewLabel.m
//  GuideToFurther
//
//  Created by heivr.mxy on 16/7/5.
//  Copyright © 2016年 heivr.mxy. All rights reserved.
//

#import "NewLabel.h"

@implementation NewLabel

//重写此方法
- (CGSize)intrinsicContentSize{
    
    //获取父类的内容计算出来的宽和高
    CGSize originolSize = [super intrinsicContentSize];
    //讲获取到的宽和高都加上20，这20就是他们的留白（label不能忘记居中）
    CGSize size = CGSizeMake(originolSize.width + 20, originolSize.height + 20);
    return size;
    
}

/*
 
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
