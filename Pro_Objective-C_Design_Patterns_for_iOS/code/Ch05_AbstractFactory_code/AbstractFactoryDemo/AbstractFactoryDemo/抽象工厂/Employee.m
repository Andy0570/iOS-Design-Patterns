//
//  Employee.m
//  AbstractFactoryDemo
//
//  Created by Qilin Hu on 2020/6/19.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import "Employee.h"
#import "EmployeeDeveloper.h"
#import "EmployeeDesigner.h"
#import "EmployeeFinance.h"

@implementation Employee

+ (Employee *)employeeWithType:(EmployeeType)type {
    switch (type) {
        case EmployeeTypeDeveloper:
            return [EmployeeDeveloper new];
            break;
        case EmployeeTypeDesigner:
            return [EmployeeDesigner new];
            break;
        case EmployeeTypeFinance:
            return [EmployeeFinance new];
            break;
    }
}

// 子类去实现内容
- (void)doADaysWork {
    // ...这里实现通用的操作
    NSLog(@"上班打卡签到...");
}

@end
