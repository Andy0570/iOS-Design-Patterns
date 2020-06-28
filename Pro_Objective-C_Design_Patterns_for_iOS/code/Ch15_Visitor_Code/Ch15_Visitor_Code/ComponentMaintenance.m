//
//  ComponentMaintenance.m
//  VisitorPattern
//
//  Created by Qilin Hu on 2020/6/28.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import "ComponentMaintenance.h"

@implementation ComponentMaintenance

- (void)visitEngine:(Engine *)engine {
    NSLog(@"我是维修人员，正在对引擎<%@>进行维修", engine);
}

- (void)visitWheel:(Wheel *)wheel {
    NSLog(@"我是维修人员，正在对车轮<%@>进行维修", wheel);
}

@end
