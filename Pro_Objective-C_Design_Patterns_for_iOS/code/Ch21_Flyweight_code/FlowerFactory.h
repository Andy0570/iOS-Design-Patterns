//
//  FlowerFactory.h
//  Flyweight
//
//  Created by Carlo Chung on 11/29/10.
//  Copyright 2010 Carlo Chung. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, FlowerType) {
    kAnemone,
    kCosmos,
    kGerberas,
    kHollyhock,
    kJasmine,
    kZinnia,
    kTotalNumberOfFlowerTypes // 所支持花朵类型的总数
};

/// 享元工厂
@interface FlowerFactory : NSObject

/**
 以 UIView 的形式返回 FlowerView 的实例
 */
- (UIView *)flowerViewWithType:(FlowerType)type;

@end
