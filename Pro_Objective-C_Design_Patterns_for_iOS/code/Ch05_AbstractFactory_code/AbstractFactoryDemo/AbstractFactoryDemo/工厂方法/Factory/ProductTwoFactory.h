//
//  ProductTwoFactory.h
//  AbstractFactoryDemo
//
//  Created by Qilin Hu on 2020/6/19.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Factory.h"
@class Product;

NS_ASSUME_NONNULL_BEGIN

/// 具体产品2的具体工厂
@interface ProductTwoFactory : Factory

+ (Product *)createProduct;

@end

NS_ASSUME_NONNULL_END
