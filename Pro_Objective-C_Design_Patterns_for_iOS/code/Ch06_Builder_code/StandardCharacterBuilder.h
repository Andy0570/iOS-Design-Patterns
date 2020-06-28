//
//  StandardCharacterBuilder.h
//  Builder
//
//  Created by Carlo Chung on 11/27/10.
//  Copyright 2010 Carlo Chung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CharacterBuilder.h"

/// !!!: 标准建造者，创建角色的各种具体算法的实现
/// StandardCharacterBuilder 是 CharacterBuilder 的子类
/// 定义了生成具有各种相关特征的真正角色的逻辑。
@interface StandardCharacterBuilder : CharacterBuilder 

// 从抽象的 CharacterBuilder 类重载的方法
- (CharacterBuilder *) buildStrength:(float) value;
- (CharacterBuilder *) buildStamina:(float) value;
- (CharacterBuilder *) buildIntelligence:(float) value;
- (CharacterBuilder *) buildAgility:(float) value;
- (CharacterBuilder *) buildAggressiveness:(float) value;

@end
