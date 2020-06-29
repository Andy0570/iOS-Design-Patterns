//
//  Invoker.h
//  Ch20_Command_code
//
//  Created by Qilin Hu on 2020/6/29.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"

NS_ASSUME_NONNULL_BEGIN

/**
 调用者
 
 通过 delegate 把接收者抽象化，只要遵循 <Command> 协议的对象，就可以执行 execute 动作！
 */
@interface Invoker : NSObject

@property (nonatomic, weak) id<Command> command;

// MARK: 调用者对接收者发起了执行命令
- (void)executeCommand;

@end

NS_ASSUME_NONNULL_END
