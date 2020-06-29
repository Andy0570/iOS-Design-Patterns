//
//  Caretaker.h
//  Ch23_Memento_code
//
//  Created by Qilin Hu on 2020/6/29.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Memento;

NS_ASSUME_NONNULL_BEGIN

/**
 !!!: 看管人
 
 管理角色：对备忘录进行管理，保存和提供备忘录。
 理解：这个类就是用来保存备忘录的
 */
@interface Caretaker : NSObject

@property (nonatomic, strong) Memento *memento;

@end

NS_ASSUME_NONNULL_END
