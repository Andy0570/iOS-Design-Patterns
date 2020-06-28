//
//  ComponentUpgrade.h
//  VisitorPattern
//
//  Created by Qilin Hu on 2020/6/28.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ComponentVisitor.h"

NS_ASSUME_NONNULL_BEGIN

/// 具体访问者，升级者
@interface ComponentUpgrade : NSObject <ComponentVisitor>

- (void)visitEngine:(Engine *)engine;
- (void)visitWheel:(Wheel *)wheel;

@end

NS_ASSUME_NONNULL_END
