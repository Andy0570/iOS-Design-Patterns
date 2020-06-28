//
//  CabDriver.m
//  Facade
//
//  Created by Carlo Chung on 11/15/10.
//  Copyright 2010 Carlo Chung. All rights reserved.
//

#import "CabDriver.h"


@implementation CabDriver

- (void) driveToLocation:(CGPoint)x
{
  // ...
  
  // 1.启动计价器
  Taximeter *meter = [[Taximeter alloc] init];
  [meter start];
  
  // 2.操作汽车
  // until location x is reached
  Car *car = [[Car alloc] init];
  [car releaseBrakes];
  [car changeGears];
  [car pressAccelerator];
  
  // ...
  
  // 3.到达目的地后，停止汽车、停止计价器
  // when it's reached location x
  // then stop the car and taximeter
  [car releaseAccelerator];
  [car pressBrakes];
  [meter stop];
  
  // ...
}

@end
