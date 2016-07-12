//
//  OneViewController.m
//  GuideToFurther
//
//  Created by heivr.mxy on 16/7/12.
//  Copyright © 2016年 heivr.mxy. All rights reserved.
//

#import "OneViewController.h"

//typedef void(^ThreadSafeDictionaryBlock)(ThreadSafeDictionary *dict,NSString *key, id object);
@interface OneViewController ()

{
    dispatch_queue_t concurrentQueue;
}
@property (nonatomic,assign)NSMutableDictionary *dict;
@end

@implementation OneViewController

- (id)init
{
    if (self = [super init]) {
        concurrentQueue = dispatch_queue_create("www.reviewcode.cn", DISPATCH_QUEUE_CONCURRENT);
    }
    
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    _dict = [NSMutableDictionary dictionary];
    
    [self textMutableDictionaryThreadSafe];
}

- (void)textMutableDictionaryThreadSafe{
    
    dispatch_semaphore_t sema = dispatch_semaphore_create(0);
    
    dispatch_async(concurrentQueue, ^{
        for (int index = 0; index < 100; index ++) {
            _dict[@(index)] = @(index);
        }
        dispatch_semaphore_signal(sema);
    });
    
    dispatch_async(concurrentQueue, ^{
        for (int index = 0; index<1000 ; index++) {
            _dict[@(index)] = @(0);
        }
        dispatch_semaphore_signal(sema);
    });
    dispatch_semaphore_wait(sema, DISPATCH_TIME_FOREVER);
    dispatch_semaphore_wait(sema, DISPATCH_TIME_FOREVER);
    
    NSLog(@"dict is %@", _dict);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
