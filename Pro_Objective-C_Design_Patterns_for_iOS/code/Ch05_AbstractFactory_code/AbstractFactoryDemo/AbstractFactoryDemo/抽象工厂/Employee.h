//
//  Employee.h
//  AbstractFactoryDemo
//
//  Created by Qilin Hu on 2020/6/19.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// 员工类型
typedef NS_ENUM(NSUInteger, EmployeeType) {
    EmployeeTypeDeveloper, // 开发者
    EmployeeTypeDesigner,  // 设计师
    EmployeeTypeFinance,   // 财务
};

/// 抽象工厂模式，根据不同的枚举类型去实例化并返回不同的子类对象
/// 类抽象工厂：是抽象工厂模式的变体，通过“类簇”的方式，返回子类的实例
@interface Employee : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSUInteger salary;

+ (Employee *)employeeWithType:(EmployeeType)type;

// 子类去实现内容
- (void)doADaysWork;

@end

NS_ASSUME_NONNULL_END
