//
//  CharacterBuilder.h
//  Builder
//
//  Created by Carlo Chung on 11/27/10.
//  Copyright 2010 Carlo Chung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"

/// !!!: 抽象建造者
@interface CharacterBuilder : NSObject

@property (nonatomic, readwrite, strong) Character *character;

- (CharacterBuilder *)buildNewCharacter;
- (CharacterBuilder *)buildStrength:(float)value;
- (CharacterBuilder *)buildStamina:(float)value;
- (CharacterBuilder *)buildIntelligence:(float)value;
- (CharacterBuilder *)buildAgility:(float)value;
- (CharacterBuilder *)buildAggressiveness:(float)value;

@end
