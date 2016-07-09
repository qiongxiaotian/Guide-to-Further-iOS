//
//  GuideToFurtherTests.m
//  GuideToFurtherTests
//
//  Created by heivr.mxy on 16/7/5.
//  Copyright © 2016年 heivr.mxy. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface GuideToFurtherTests : XCTestCase

@end

@implementation GuideToFurtherTests
//setUp是每个测试方法调用前执行
- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}
//tearDown是每个测试方法调用后执行
- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}
//testExample是测试方法，和我们新建的没有差别。不过测试方法必须testXXX的格式，且不能有参数，不然不会识别为测试方法。测试方法的执行顺序是字典序排序。
//按快捷键Command + U进行单元测试，这个快捷键是全部测试。
- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSLog(@"自定义测试testExample");
    int  a= 3;
    XCTAssertTrue(a == 0,"a 不能等于0");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
//    [self measureBlock:^{
//    }];
}

@end
