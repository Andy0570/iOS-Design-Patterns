//
//  TouchConsoleController.m
//  Bridge
//
//  Created by Carlo Chung on 11/26/10.
//  Copyright 2010 Carlo Chung. All rights reserved.
//

#import "TouchConsoleController.h"
#import "ConsoleEmulator.h"


@implementation TouchConsoleController

/**
 具体的 ConsoleController 只能通过父类中定义的低层 setCommand: 方法，
 与桥接的另一端的仿真器进行交流。
 */

- (void)up
{
  [super setCommand:kConsoleCommandUp];
}

- (void)down
{
  [super setCommand:kConsoleCommandDown];
}

- (void)left
{
  [super setCommand:kConsoleCommandLeft];
}

- (void)right
{
  [super setCommand:kConsoleCommandRight];
}

- (void)select
{
  [super setCommand:kConsoleCommandSelect];
}

- (void)start
{
  [super setCommand:kConsoleCommandStart];
}

- (void)action1
{
  [super setCommand:kConsoleCommandAction1];
}

- (void)action2
{
  [super setCommand:kConsoleCommandAction2];
}

@end
