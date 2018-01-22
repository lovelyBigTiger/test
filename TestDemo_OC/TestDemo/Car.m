//
//  Car.m
//  TestDemo
//
//  Created by wyl on 2018/1/22.
//  Copyright © 2018年 wyl. All rights reserved.
//

#import "Car.h"

@interface Car()

@property (nonatomic, assign) CarType type;

@property (nonatomic, assign) CarTransmissionMode transmissionMode;

@end

@implementation Car

- (instancetype)initWith:(CarType)type transmissionMode:(CarTransmissionMode)transmissionMode {
    
    self = [super init];
    
    if (self) {
        
        _type = type;
        
        _transmissionMode = transmissionMode;
    }
    
    return self;
}

- (void)start:(NSInteger)minutes {
    
    CGFloat speed = 0;
    
    if (_type == Economy && _transmissionMode == Drive) {
        
        speed = 35;
    }
    
    if (_type == OffRoad && _transmissionMode == Drive) {
        
        speed = 50;
    }
    
    if (_type == Sport && _transmissionMode == Drive) {
        
        speed = 70;
    }
    
    _miles = speed * (minutes / 60.0);
}

@end
