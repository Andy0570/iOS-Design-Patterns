//
//  Factory.h
//  AbstractFactoryDemo
//
//  Created by Qilin Hu on 2020/6/19.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Product;

NS_ASSUME_NONNULL_BEGIN

/// 抽象工厂
@interface Factory : NSObject

+ (Product *)createProduct;

@end

NS_ASSUME_NONNULL_END
