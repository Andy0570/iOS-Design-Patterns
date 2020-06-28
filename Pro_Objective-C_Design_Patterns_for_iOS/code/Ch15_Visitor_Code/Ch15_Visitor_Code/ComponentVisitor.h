//
//  ComponentVisitor.h
//  VisitorPattern
//
//  Created by Qilin Hu on 2020/6/28.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Engine, Wheel;

NS_ASSUME_NONNULL_BEGIN

/// 访问者协议
@protocol ComponentVisitor <NSObject>

- (void)visitEngine:(Engine *)engine;
- (void)visitWheel:(Wheel *)wheel;

@end

NS_ASSUME_NONNULL_END
