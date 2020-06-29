//
//  Originator.m
//  Ch23_Memento_code
//
//  Created by Qilin Hu on 2020/6/29.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import "Originator.h"
#import "Memento.h"

@implementation Originator

- (Memento *)createMemento {
    Memento *memento = [[Memento alloc] initWithState:_state];
    return memento;
}

- (void)restoreMemento:(Memento *)memento {
    _state = memento.state;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"State: %@", _state];
}

@end
