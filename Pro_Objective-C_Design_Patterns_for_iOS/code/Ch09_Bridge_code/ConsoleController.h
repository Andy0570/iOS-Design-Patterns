//
//  VirtualController.h
//  Bridge
//
//  Created by Carlo Chung on 11/26/10.
//  Copyright 2010 Carlo Chung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConsoleEmulator.h"
#import "ConsoleCommands.h"

/// 虚拟控制器的抽象类
/// !!!: 桥接模式中的抽象类
@interface ConsoleController : NSObject 

@property (nonatomic, retain) ConsoleEmulator *emulator;

- (void)setCommand:(ConsoleCommand)command;

// 其他行为与属性

@end
