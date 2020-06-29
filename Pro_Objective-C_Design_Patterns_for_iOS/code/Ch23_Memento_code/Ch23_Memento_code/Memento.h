//
//  Memento.h
//  Ch23_Memento_code
//
//  Created by Qilin Hu on 2020/6/29.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 !!!: 备忘录
 
 负责存储原发器的内部状态，在需要的时候提供原发器需要的内部状态。
 理解：专门用一个类（Memento）来保存其他对象（Originator）的内部属性
 */
@interface Memento : NSObject

// 保存的原发器的内部状态
@property (nonatomic, readonly, copy) NSString *state;

- (instancetype)initWithState:(NSString *)state;

@end

NS_ASSUME_NONNULL_END
