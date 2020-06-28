//
//  ConsoleEmulator.h
//  Bridge
//
//  Created by Carlo Chung on 11/26/10.
//  Copyright 2010 Carlo Chung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConsoleCommands.h"

/// 仿真器的抽象类，描述一套通用的指令
/// !!!: 桥接模式中的实现类
@interface ConsoleEmulator : NSObject

// 把任何具体的操作系统指令，加载到内部数据结构中
- (void)loadInstructionsForCommand:(ConsoleCommand) command;

// 执行任何加载到这个数据结构中的指令
- (void)executeInstructions;

// 其他行为与属性

@end
