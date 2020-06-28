//
//  Singleton.m
//  Singleton
//
//  Created by Carlo Chung on 6/10/10.
//  Copyright 2010 Carlo Chung. All rights reserved.
//

#import "Singleton.h"


@implementation Singleton


static Singleton *sharedSingleton_ = nil;

- (void) operation
{
  // do something
  NSLog(@"Singleton");
}

+ (Singleton *)sharedInstance
{
  // 1.检查类的唯一实例是否已经被创建
  if (sharedSingleton_ == nil)
  {
    // 支持实例化 Singleton 及其子类对象
    sharedSingleton_ = [NSAllocateObject([self class], 0, NULL) init];
  }
  
  return sharedSingleton_;
}


+ (id)allocWithZone:(NSZone *)zone
{
  return [[self sharedInstance] retain];
}


- (id)copyWithZone:(NSZone*)zone
{
  return self;
}

- (id)retain
{
  return self;
}

- (NSUInteger)retainCount
{
  return NSUIntegerMax; // 表示不能释放的对象
}

- (void)release
{
  // do nothing
}

- (id)autorelease
{
  return self;
}

@end
