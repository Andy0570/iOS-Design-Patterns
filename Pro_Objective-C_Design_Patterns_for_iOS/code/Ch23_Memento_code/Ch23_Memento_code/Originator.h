//
//  Originator.h
//  Ch23_Memento_code
//
//  Created by Qilin Hu on 2020/6/29.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Memento;

NS_ASSUME_NONNULL_BEGIN

/**
 !!!: 原发器
 
 记录当前时刻的内部状态，负责定义哪些属于备份范围的状态，负责创建和恢复备忘录数据。
 */
@interface Originator : NSObject

// 内部状态
@property (nonatomic, readwrite, copy) NSString *state;

- (Memento *)createMemento;
- (void)restoreMemento:(Memento *)memento;

@end

NS_ASSUME_NONNULL_END
