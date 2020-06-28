//
//  main.m
//  AbstractFactoryDemo
//
//  Created by Qilin Hu on 2020/6/18.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

#import "Product.h"
#import "ProductOneFactory.h"
#import "ProductTwoFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 在 Cocoa Touch 框架中使用抽象工厂
        NSNumber *boolNumber = [NSNumber numberWithBool:YES];
        NSNumber *charNumber = [NSNumber numberWithChar:'a'];
        NSNumber *intNumber = [NSNumber numberWithInt:1];
        NSNumber *floatNumber = [NSNumber numberWithFloat:1.0];
        NSNumber *doubleNumber = [NSNumber numberWithDouble:1.0];
        
        // 通过运行时检查当前实例的类型
        if ([boolNumber isKindOfClass:[NSNumber class]]) {
            NSLog(@"该对象是 NSNumber 类的成员，或者是该派生类的成员");
        } else {
            NSLog(@"该对象不是 NSNumber 类的成员，或者是该派生类的成员");
        }
        
        if ([boolNumber isMemberOfClass:[NSNumber class]]) {
            NSLog(@"该对象是 NSNumber 类的成员（不包括子类）");
        } else {
            NSLog(@"该对象不是 NSNumber 类的成员（不包括子类）");
        }
        
        // 查看类的描述信息
        NSLog(@"%@", [[boolNumber class] description]);   // __NSCFBoolean
        NSLog(@"%@", [[charNumber class] description]);   // __NSCFNumber
        NSLog(@"%@", [[intNumber class] description]);    // __NSCFNumber
        NSLog(@"%@", [[floatNumber class] description]);  // __NSCFNumber
        NSLog(@"%@", [[doubleNumber class] description]); // __NSCFNumber
        
        NSLog(@"%d", [boolNumber intValue]); // 1
        NSLog(@"%@", [charNumber boolValue] ? @"YES" : @"NO"); // YES
        
        
        // MARK: 工厂方法模式，针对单个类型的抽象类
        Product *product1 = [ProductOneFactory createProduct];
        NSLog(@"%@",product1);
        
        Product *product2 = [ProductTwoFactory createProduct];
        NSLog(@"%@",product2);
        
        // MARK: 抽象工厂模式，针对具有相同结构的一系列类型的抽象类
        // Employee 示例
        Employee *employee = [Employee employeeWithType:EmployeeTypeDeveloper];
        [employee doADaysWork];
        
        
    }
    return 0;
}

