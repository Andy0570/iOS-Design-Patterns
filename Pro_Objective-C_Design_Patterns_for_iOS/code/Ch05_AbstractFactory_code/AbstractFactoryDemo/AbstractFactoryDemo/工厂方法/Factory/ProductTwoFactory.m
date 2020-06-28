//
//  ProductTwoFactory.m
//  AbstractFactoryDemo
//
//  Created by Qilin Hu on 2020/6/19.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import "ProductTwoFactory.h"
#import "ProductTwo.h"

@implementation ProductTwoFactory

+ (Product *)createProduct {
    return [[ProductTwo alloc] init];
}

@end
