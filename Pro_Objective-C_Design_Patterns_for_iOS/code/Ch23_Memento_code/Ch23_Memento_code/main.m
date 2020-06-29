//
//  main.m
//  Ch23_Memento_code
//
//  Created by Qilin Hu on 2020/6/29.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Originator.h"
#import "Memento.h"
#import "Caretaker.h"

/**
 !!!: iOS 设计模式——备忘录模式
 备忘录模式：保存某个对象的状态，并在后来进行恢复。
 
 参考：<https://my.oschina.net/fuzheng/blog/491651>
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 原发器对象
        Originator *originator = [[Originator alloc] init];
        originator.state = @"old";
        NSLog(@"%@",originator); // old
        
        // MARK: 通过「原发器」创建「备忘录」对象，将「原发器」的状态保存到「备忘录」对象中。
        Memento *memento = originator.createMemento;
        
        // MARK: 看管人对象，保管「备忘录」对象
        Caretaker *caretaker = [[Caretaker alloc] init];
        caretaker.memento = memento;
        
        originator.state = @"new";
        NSLog(@"%@",originator); // new
        
        // MARK: 从「看管人」对象中恢复「原发器」对象的状态
        [originator restoreMemento:caretaker.memento];
        NSLog(@"%@",originator); // old
    }
    return 0;
}
