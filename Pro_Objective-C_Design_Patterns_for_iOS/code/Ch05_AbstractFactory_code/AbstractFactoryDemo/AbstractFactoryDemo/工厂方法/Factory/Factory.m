//
//  Factory.m
//  AbstractFactoryDemo
//
//  Created by Qilin Hu on 2020/6/19.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import "Factory.h"
#import "Product.h"

@implementation Factory

+ (Product *)createProduct {
    // 如果 Product 是抽象的，那么这里可以返回 nil
    return [[Product alloc] init];
}

@end
