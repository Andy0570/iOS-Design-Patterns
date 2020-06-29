//
//  Memento.m
//  Ch23_Memento_code
//
//  Created by Qilin Hu on 2020/6/29.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import "Memento.h"

@interface Memento ()
@property (nonatomic, readwrite, copy) NSString *state;
@end

@implementation Memento

- (instancetype)initWithState:(NSString *)state {
    self = [super init];
    if (self) {
        _state = [state copy];
    }
    return self;
}

@end
