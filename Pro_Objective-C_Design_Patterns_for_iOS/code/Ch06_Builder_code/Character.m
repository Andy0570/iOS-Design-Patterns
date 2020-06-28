//
//  Character.m
//  Builder
//
//  Created by Carlo Chung on 11/27/10.
//  Copyright 2010 Carlo Chung. All rights reserved.
//

#import "Character.h"


@implementation Character

- (id)init {
  if (self = [super init]) {
    _protection = 1.0;
    _power = 1.0;
    _strength = 1.0;
    _stamina = 1.0;
    _intelligence = 1.0;
    _agility = 1.0;
    _aggressiveness = 1.0;
  }
  return self;
}

@end
