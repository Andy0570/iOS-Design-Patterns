//
//  Wheel.m
//  VisitorPattern
//
//  Created by Qilin Hu on 2020/6/28.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import "Wheel.h"

@implementation Wheel

#pragma mark - Initialize

- (instancetype)init {
    self = [super init];
    if (self) {
        _diameter = 400.0f;
    }
    return self;
}

#pragma mark - Public

- (void)acceptComponentVisitor:(id<ComponentVisitor>) visitor {
    [visitor visitWheel:self];
}

#pragma mark - Override

- (NSString *)description {
    return [NSString stringWithFormat:@"Wheel: %f mm", _diameter];
}

@end
