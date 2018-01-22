//
//  CarTests.m
//  TestDemoTests
//
//  Created by wyl on 2018/1/22.
//  Copyright © 2018年 wyl. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Car.h"

@interface CarTests : XCTestCase

@property (nonatomic, strong) Car *ferrari;

@property (nonatomic, strong) Car *jeep;

@property (nonatomic, strong) Car *honda;

@end

@implementation CarTests

- (void)setUp {
    [super setUp];
    
    _ferrari = [[Car alloc] initWith:Sport transmissionMode:Drive];
    
    _jeep = [[Car alloc] initWith:OffRoad transmissionMode:Drive];
    
    _honda = [[Car alloc] initWith:Economy transmissionMode:Drive];
}

- (void)tearDown {
    
    _ferrari = nil;
    
    _jeep = nil;
    
    _honda = nil;
    
    [super tearDown];
}

- (void)testExample {
    
    NSInteger minutes = 60;
    
    // 1 start ferrari
    
    [_ferrari start:minutes];
    
    XCTAssertEqual(_ferrari.miles, 70);
    
    // 2 start jeep
    
    [_jeep start:minutes];
    
    XCTAssertEqual(_jeep.miles, 50);
    
    // 3 start honda
    
    [_honda start:minutes];
    
    XCTAssertEqual(_honda.miles, 35);
    
    // Test it
    
    XCTAssertTrue(_jeep.miles > _honda.miles);
    
    XCTAssertTrue(_ferrari.miles > _jeep.miles);
    
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}



@end
