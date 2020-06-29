//
//  Receiver.h
//  Ch20_Command_code
//
//  Created by Qilin Hu on 2020/6/29.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 接收者
 
 以前的做法是，Receiver 直接遵守 <Command> 协议，然后在这个类里面执行具体命令
 现在，把 Receiver 遵守 <Command> 协议的动作抽象到 ConcreteCommand 类中了！
 */
@interface Receiver : NSObject

- (void)action;

@end

NS_ASSUME_NONNULL_END
