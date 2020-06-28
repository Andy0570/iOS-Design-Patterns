//
//  GameGearEmulator.h
//  Bridge
//
//  Created by Carlo Chung on 11/26/10.
//  Copyright 2010 Carlo Chung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConsoleEmulator.h"

@interface GameGearEmulator : ConsoleEmulator

// 从抽象父类重载的行为
- (void) loadInstructionsForCommand:(ConsoleCommand) command;
- (void) executeInstructions;

// 其他行为与属性

@end
