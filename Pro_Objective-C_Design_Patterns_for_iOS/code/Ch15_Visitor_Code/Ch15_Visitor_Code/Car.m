//
//  Car.m
//  VisitorPattern
//
//  Created by Qilin Hu on 2020/6/28.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import "Car.h"
#import "Engine.h"
#import "Wheel.h"

@interface Car ()
@property (nonatomic, readwrite) NSMutableArray *mutableArrayOfWheels;
@end

@implementation Car

#pragma mark - Initialize

- (instancetype)init {
    self = [super init];
    if (self) {
        _mutableArrayOfWheels = [[NSMutableArray alloc] initWithCapacity:4];
    }
    return self;
}

#pragma mark - Custom Accessors

- (NSArray *)arrayOfWheels {
    return [_mutableArrayOfWheels copy];
}

#pragma mark - Public

- (void)addWheel:(Wheel *)wheel atIndex:(NSUInteger)index {
    [_mutableArrayOfWheels insertObject:wheel atIndex:index];
}

// 接受访问者，允许访问者访问自身
- (void)acceptComponentVisitor:(id<ComponentVisitor>) visitor {
    // MARK: 允许访问者访问汽车引擎
    if (self.engine) {
        [self.engine acceptComponentVisitor:visitor];
    }
    
    // MARK: 允许访问者访问汽车轮胎
    for (Wheel *wheel in self.arrayOfWheels) {
        [wheel acceptComponentVisitor:visitor];
    }
}

#pragma mark - Override

- (NSString *)description {
    return [NSString stringWithFormat:@"My Car: %@",[NSDictionary dictionaryWithObjects:@[_engine, self.arrayOfWheels] forKeys:@[@"Engninne",@"Wheels"]]];
}

@end
