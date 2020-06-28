//
//  HQLUserManager.h
//  Singleton
//
//  Created by Qilin Hu on 2020/6/20.
//  Copyright © 2020 Carlo Chung. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// 通过 GCD 的方式创建单例类
@interface HQLUserManager : NSObject

+ (instancetype)sharedManager;

@end

NS_ASSUME_NONNULL_END
