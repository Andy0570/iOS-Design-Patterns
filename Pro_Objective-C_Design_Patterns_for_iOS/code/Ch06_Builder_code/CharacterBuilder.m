//
//  CharacterBuilder.m
//  Builder
//
//  Created by Carlo Chung on 11/27/10.
//  Copyright 2010 Carlo Chung. All rights reserved.
//

#import "CharacterBuilder.h"

@implementation CharacterBuilder

- (CharacterBuilder *)buildNewCharacter
{
  // 创建新角色之前，自动释放先前的角色
  [_character autorelease];
  _character = [[Character alloc] init];
  
  return self;
}

- (CharacterBuilder *)buildStrength:(float) value
{
  _character.strength = value;
  return self;
}

- (CharacterBuilder *)buildStamina:(float) value
{
  _character.stamina = value;
  return self;
}

- (CharacterBuilder *)buildIntelligence:(float) value
{
  _character.intelligence = value;
  return self;
}

- (CharacterBuilder *)buildAgility:(float) value
{
  _character.agility = value;
  return self;
}

- (CharacterBuilder *)buildAggressiveness:(float) value
{
  _character.aggressiveness = value;
  return self;
}

- (void)dealloc
{
  [_character autorelease];
  [super dealloc];
}

@end
