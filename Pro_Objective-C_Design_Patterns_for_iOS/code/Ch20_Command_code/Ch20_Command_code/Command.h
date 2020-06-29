//
//  Command.h
//  Ch20_Command_code
//
//  Created by Qilin Hu on 2020/6/29.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 Command 为 Invoker 所知的通用接口（协议）
 */
@protocol Command <NSObject>

- (void)execute;

@end

NS_ASSUME_NONNULL_END
