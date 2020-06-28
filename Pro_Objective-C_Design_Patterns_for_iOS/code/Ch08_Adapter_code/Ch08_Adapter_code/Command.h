//
//  Command.h
//  Ch08_Adapter_code
//
//  Created by Qilin Hu on 2020/6/20.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Command : NSObject

- (void)execute;

@end

NS_ASSUME_NONNULL_END
