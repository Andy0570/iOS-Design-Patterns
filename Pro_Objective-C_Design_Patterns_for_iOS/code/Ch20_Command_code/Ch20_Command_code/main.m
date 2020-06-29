//
//  main.m
//  Ch20_Command_code
//
//  Created by Qilin Hu on 2020/6/29.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Receiver.h"
#import "Invoker.h"
#import "ConcreteCommand.h"

/**
 iOS 设计模式——命名模式
 
 命名模式：将请求封装为一个对象，从而可用不同的请求对客户进行参数化，对请求排队或记录请求日志，以及支持可撤销的操作。
 
 参考：<https://my.oschina.net/fuzheng/blog/492088>
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 示例一：
        Receiver *aReceiver = [[Receiver alloc] init];
        ConcreteCommand *aConcreteCommand = [[ConcreteCommand alloc] initWithReceiver:aReceiver];
        
        Invoker *aInvoker = [[Invoker alloc] init];
        aInvoker.command = aConcreteCommand;
        [aInvoker executeCommand];
        
        
        // 示例二：
        // Cocoa Touch 框架中的命令模式：使用 NSInvocation 对象
        SEL sel = @selector(action);
        NSMethodSignature *methodSignature = [[aReceiver class] instanceMethodSignatureForSelector:sel];
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:methodSignature];
        [invocation setTarget:aReceiver];
        [invocation setSelector:sel];
        [invocation invoke]; // 通过调用 NSInvocation 对象的 invoke 方法，完成对 Receiver 中 action 的调用
        
    }
    return 0;
}
