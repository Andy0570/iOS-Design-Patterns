//
//  Invoker.m
//  Ch20_Command_code
//
//  Created by Qilin Hu on 2020/6/29.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import "Invoker.h"

@implementation Invoker

- (void)executeCommand {
    if (self.command && [self.command respondsToSelector:@selector(execute)]) {
        [self.command execute];
    }
}

@end
