//
//  ProductOneFactory.m
//  AbstractFactoryDemo
//
//  Created by Qilin Hu on 2020/6/19.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import "ProductOneFactory.h"
#import "ProductOne.h"

@implementation ProductOneFactory

+ (Product *)createProduct {
    return [[ProductOne alloc] init];
}

@end
