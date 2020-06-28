//
//  FlyweightView.m
//  Flyweight
//
//  Created by Carlo Chung on 11/29/10.
//  Copyright 2010 Carlo Chung. All rights reserved.
//

#import "FlyweightView.h"
#import "ExtrinsicFlowerState.h"

@implementation FlyweightView

extern NSString *FlowerObjectKey, *FlowerLocationKey;

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
// 重载 drawRect: 方法，在屏幕上绘制花朵
- (void)drawRect:(CGRect)rect {
  // 绘图代码
  for (NSValue *stateValue in _flowerList) {
    ExtrinsicFlowerState state;
    [stateValue getValue:&state];
    
    UIView *flowerView = state.flowerView;
    CGRect area = state.area;
    
    [flowerView drawRect:area];
  }
}

- (void)dealloc {
  [_flowerList release];
  [super dealloc];
}

@end
