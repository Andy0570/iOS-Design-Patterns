//
//  VirtualController.m
//  Bridge
//
//  Created by Carlo Chung on 11/26/10.
//  Copyright 2010 Carlo Chung. All rights reserved.
//

#import "ConsoleController.h"


@implementation ConsoleController

/**
 此方法不应该被子类继承/覆盖/重载
 
 此方法是控制器与仿真器进行交流的唯一接口，它不能被破坏！
 */
- (void) setCommand:(ConsoleCommand)command {
  [_emulator loadInstructionsForCommand:command];
  [_emulator executeInstructions];
}

@end
