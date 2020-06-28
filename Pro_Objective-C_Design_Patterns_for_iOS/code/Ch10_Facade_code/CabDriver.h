//
//  CabDriver.h
//  Facade
//
//  Created by Carlo Chung on 11/15/10.
//  Copyright 2010 Carlo Chung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Taximeter.h"

/// 外观模式，CabDriver 是整个子系统对外的唯一接口
/// CabDriver 出租车司机作为“外观”以简化接口
@interface CabDriver : NSObject 

- (void) driveToLocation:(CGPoint)x;

@end
