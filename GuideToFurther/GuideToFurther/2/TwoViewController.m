//
//  TwoViewController.m
//  GuideToFurther
//
//  Created by heivr.mxy on 16/7/12.
//  Copyright © 2016年 heivr.mxy. All rights reserved.
//

#import "TwoViewController.h"

@interface TwoViewController ()

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
//利用CoreGraphics取出一张图片的某一个pixel的RGBA
/*
 * x,y指在pixel在图像中的位置
 */
- (NSArray *)getRGBAsFromImage:(UIImage *)image atX:(int)x andY:(int)y count:(int)count{
    
    NSMutableArray *result = [NSMutableArray arrayWithCapacity:count];
    
    //讲Image转换成CGImageRef
    CGImageRef imageRef = [image CGImage];
    
    //获取图像的宽和高
    NSUInteger width = CGImageGetWidth(imageRef);
    NSUInteger height = CGImageGetHeight(imageRef);
    
    //创建一个RGB的colorSpace
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    
    //开辟一段存储unsigned char 类型的内存空间，并把这内存空间的首地址赋值给rawData
    unsigned char *rawData = (unsigned char*) calloc(height * width * 4, sizeof(unsigned char));//calloc第一个参数表示这段存储空间存储的数量，第2个表示存储个体所占的大小，
    
    //每一个大小为4个字节
    NSUInteger bytesPerPixel = 4;
    
    //图片中每一行的大小
    NSUInteger bytesPerRow = bytesPerPixel * width;
    
    //RGB中的每一个值是8比特
    NSUInteger bitsPerComponent = 8;
    
    //创建bitmap的上下文，然后绘制到CGImageRef，这样我们就可以在rawData中拿到图片所有的pixel
    CGContextRef context = CGBitmapContextCreate(rawData, width, height, bitsPerComponent, bytesPerRow, colorSpace, kCGImageAlphaNoneSkipLast | kCGBitmapByteOrder32Big);
    
    //移除
    CGColorSpaceRelease(colorSpace);
    //生成图片
    CGContextDrawImage(context, CGRectMake(0, 0, width, height), imageRef);
    
    CGContextRelease(context);
    
    NSUInteger byteIndex = (bytesPerRow * y) + x * bytesPerPixel;
    
    for (int i = 0; i < count; ++i) {
        CGFloat alpha = ((CGFloat ) rawData[byteIndex + 3]) / 25.0f;
        
        CGFloat red = ((CGFloat) rawData[byteIndex]) / 25.0f;
        
        CGFloat green = ((CGFloat ) rawData[byteIndex +1] / 25.0f);
        
        CGFloat blue = ((CGFloat) rawData[byteIndex +2] / 25.0f);
        
        byteIndex += bytesPerPixel;
        
        UIColor *acolor = [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
        
        [result addObject:acolor];
    }
    
    free(rawData);
    return result;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
