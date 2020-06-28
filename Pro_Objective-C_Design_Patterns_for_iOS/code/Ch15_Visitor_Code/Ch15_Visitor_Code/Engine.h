//
//  Engine.h
//  VisitorPattern
//
//  Created by Qilin Hu on 2020/6/28.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ComponentVisitor.h"

NS_ASSUME_NONNULL_BEGIN

@interface Engine : NSObject

@property (nonatomic, copy) NSString *modelName;

- (instancetype)initWithModelName:(NSString *)modelName;

// 接受访问者，允许访问者访问自身
- (void)acceptComponentVisitor:(id<ComponentVisitor>) visitor;

@end

NS_ASSUME_NONNULL_END
