//
//  ImageFilter.m
//  Decorator
//
//  Created by Carlo Chung on 11/30/10.
//  Copyright 2010 Carlo Chung. All rights reserved.
//

#import "ImageFilter.h"

@implementation ImageFilter

- (id)initWithImageComponent:(id <ImageComponent>) component {
  if (self = [super init]) {
    // save an ImageComponent
    [self setComponent:component];
  }
  
  return self;
}

- (void)apply {
  // should be overridden by subclasses to apply real filters
  // MARK: apply 方法让具体滤镜子类向 _component 增加额外的行为
}

- (id)forwardingTargetForSelector:(SEL)aSelector {
  NSString *selectorName = NSStringFromSelector(aSelector);
  if ([selectorName hasPrefix:@"draw"]) {
    [self apply];
  }
  
  return _component;
}

/*
- (void) drawAsPatternInRect:(CGRect)rect
{
  [self apply];
  [_component drawAsPatternInRect:rect];
}

- (void) drawAtPoint:(CGPoint)point
{
  [self apply];
  [_component drawAtPoint:point];
}

- (void) drawAtPoint:(CGPoint)point blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha
{
  [self apply];
  [_component drawAtPoint:point
                blendMode:blendMode
                    alpha:alpha];
}

- (void) drawInRect:(CGRect)rect
{
  [self apply];
  [_component drawInRect:rect];
}

- (void) drawInRect:(CGRect)rect blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha
{
  [self apply];
  [_component drawInRect:rect
               blendMode:blendMode
                   alpha:alpha];
}
*/



@end
