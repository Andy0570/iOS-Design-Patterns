//
//  ConcreteCommand.m
//  Ch20_Command_code
//
//  Created by Qilin Hu on 2020/6/29.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import "ConcreteCommand.h"
#import "Receiver.h"

@implementation ConcreteCommand

- (instancetype)initWithReceiver:(Receiver *)receiver {
    self = [super init];
    if (self) {
        _receiver = receiver;
    }
    return self;
}

#pragma mark - <Command>

// MARK: 接收者执行具体命令
- (void)execute {
    [_receiver action];
}

@end
