//
//  Engine.m
//  VisitorPattern
//
//  Created by Qilin Hu on 2020/6/28.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import "Engine.h"

@implementation Engine

#pragma mark - Initialize

- (instancetype)initWithModelName:(NSString *)modelName {
    self = [super init];
    if (self) {
        _modelName = [modelName copy];
    }
    return self;
}

- (instancetype)init {
    return [self initWithModelName:@"Slant 6"];
}

#pragma mark - Public

- (void)acceptComponentVisitor:(id<ComponentVisitor>) visitor {
    [visitor visitEngine:self];
}

#pragma mark - Override

- (NSString *)description {
    return [NSString stringWithFormat:@"Engnine: %@", _modelName];
}

@end
