//
//  Car.h
//  TestDemo
//
//  Created by wyl on 2018/1/22.
//  Copyright © 2018年 wyl. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, CarType) {
    Economy,
    OffRoad,
    Sport,
};

typedef NS_ENUM(NSInteger, CarTransmissionMode) {
    Park,
    Reverse,
    Neutral,
    Drive,
};

@interface Car : NSObject

@property (nonatomic, assign) CGFloat miles;

- (instancetype)initWith:(CarType)type transmissionMode:(CarTransmissionMode)transmissionMode;

- (void)start:(NSInteger)minutes;

@end
