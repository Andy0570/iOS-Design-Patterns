//
//  Character.h
//  Builder
//
//  Created by Carlo Chung on 11/27/10.
//  Copyright 2010 Carlo Chung. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 Model 模型类
 
 Character 定义所有类型角色（游戏者或敌人）共有的一套特征
 */
@interface Character : NSObject 

@property (nonatomic, assign) float protection; // 防御
@property (nonatomic, assign) float power;      // 攻击
@property (nonatomic, assign) float strength;   // 力量
@property (nonatomic, assign) float stamina;    // 耐力
@property (nonatomic, assign) float intelligence; // 智力
@property (nonatomic, assign) float agility;      // 敏捷
@property (nonatomic, assign) float aggressiveness; // 攻击力

@end
