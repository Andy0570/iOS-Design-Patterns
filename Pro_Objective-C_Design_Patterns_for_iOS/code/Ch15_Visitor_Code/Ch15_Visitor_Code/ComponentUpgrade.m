//
//  ComponentUpgrade.m
//  VisitorPattern
//
//  Created by Qilin Hu on 2020/6/28.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import "ComponentUpgrade.h"

@implementation ComponentUpgrade

- (void)visitEngine:(Engine *)engine {
    NSLog(@"我是升级人员，正在对引擎<%@>进行升级", engine);
}

- (void)visitWheel:(Wheel *)wheel {
    NSLog(@"我是升级人员，正在对车轮<%@>进行升级", wheel);
}

@end
