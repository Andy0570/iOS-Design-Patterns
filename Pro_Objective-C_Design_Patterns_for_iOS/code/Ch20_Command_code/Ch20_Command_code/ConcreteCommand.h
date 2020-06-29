//
//  ConcreteCommand.h
//  Ch20_Command_code
//
//  Created by Qilin Hu on 2020/6/29.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"
@class Receiver;

NS_ASSUME_NONNULL_BEGIN

/**
 具体命令
 
 理解：具体命令充当「接收者」和 Command 之间的粘接剂，描述让「接收者」执行 Command 命令的动作！
 !!!: 把「接收者」执行 Command 命令的动作抽取成了单独一个具体类。
 */
@interface ConcreteCommand : NSObject <Command>

@property (nonatomic, strong) Receiver *receiver;

- (instancetype)initWithReceiver:(Receiver *)receiver;

@end

NS_ASSUME_NONNULL_END
