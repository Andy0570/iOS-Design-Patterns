//
//  main.m
//  Ch15_Visitor_Code
//
//  Created by Qilin Hu on 2020/6/28.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Engine.h"
#import "Wheel.h"
#import "ComponentUpgrade.h"
#import "ComponentMaintenance.h"

/**
 iOS 设计模式 --- 访问者模式
  
 参考：<https://my.oschina.net/fuzheng/blog/491258>
 一个简单的 Car 模型，含有 1 台 Engine、4 个 Wheel，使用访问者模式添加对 Car 的升级与维修操作。
*/
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 实例化一辆 Car
        Car *car = [[Car alloc] init];
        
        // 添加引擎
        Engine *engine = [[Engine alloc] initWithModelName:@"V8 Engine"];
        car.engine = engine;
        
        // 添加轮子
        Wheel *wheelA = [[Wheel alloc] init];
        Wheel *wheelB = [[Wheel alloc] init];
        Wheel *wheelC = [[Wheel alloc] init];
        Wheel *wheelD = [[Wheel alloc] init];
        [car addWheel:wheelA atIndex:0];
        [car addWheel:wheelB atIndex:1];
        [car addWheel:wheelC atIndex:2];
        [car addWheel:wheelD atIndex:3];
        
        NSLog(@"%@",car);
        
        // MARK: 通过「访问者模式」对汽车组件进行升级
        ComponentUpgrade *upgradeVisitor = [[ComponentUpgrade alloc] init];
        [car acceptComponentVisitor:upgradeVisitor];
        
        // MARK: 通过「访问者模式」对汽车组件进行维修
        ComponentMaintenance *maintenanceVisitor = [[ComponentMaintenance alloc] init];
        [car acceptComponentVisitor:maintenanceVisitor];
    }
    return 0;
}
