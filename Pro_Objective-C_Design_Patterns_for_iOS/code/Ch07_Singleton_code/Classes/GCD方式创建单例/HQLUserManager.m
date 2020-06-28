//
//  HQLUserManager.m
//  Singleton
//
//  Created by Qilin Hu on 2020/6/20.
//  Copyright © 2020 Carlo Chung. All rights reserved.
//

#import "HQLUserManager.h"
#import "HQLUser.h"

@interface HQLUserManager ()
@property (nonatomic, strong) HQLUser *user;
@end

@implementation HQLUserManager

/**
 使用线程安全的模式创建共享的实例

 使用 dispatch_once 来执行只需运行一次的线程安全代码
*/
+ (instancetype)sharedManager {
    static HQLUserManager *sharedManager = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedManager = [[HQLUserManager alloc] init];
        sharedManager.user = [[HQLUser alloc] init];
    });
    return sharedManager;
}

@end
