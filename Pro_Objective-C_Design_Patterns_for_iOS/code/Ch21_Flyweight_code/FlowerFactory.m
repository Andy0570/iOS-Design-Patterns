//
//  FlowerFactory.m
//  Flyweight
//
//  Created by Carlo Chung on 11/29/10.
//  Copyright 2010 Carlo Chung. All rights reserved.
//

#import "FlowerFactory.h"
#import "FlowerView.h"

@interface FlowerFactory ()
@property (nonatomic, strong) NSMutableDictionary *flowerPool;
@end

@implementation FlowerFactory

- (UIView *)flowerViewWithType:(FlowerType)type {
  // lazy-load a flower pool
  if (!_flowerPool) {
    _flowerPool = [[NSMutableDictionary alloc] initWithCapacity:kTotalNumberOfFlowerTypes];
  }
  
  // try to retrieve a flower from the pool
  UIView *flowerView = [_flowerPool objectForKey:[NSNumber numberWithInteger:type]];
  
  // if the type requested is not available then
  // create a new one and add it to the pool
  if (!flowerView) {
    UIImage *flowerImage;
    
    switch (type) {
      case kAnemone:
        flowerImage = [UIImage imageNamed:@"anemone.png"];
        break;
      case kCosmos:
        flowerImage = [UIImage imageNamed:@"cosmos.png"];
        break;
      case kGerberas:
        flowerImage = [UIImage imageNamed:@"gerberas.png"];
        break;
      case kHollyhock:
        flowerImage = [UIImage imageNamed:@"hollyhock.png"];
        break;
      case kJasmine:
        flowerImage = [UIImage imageNamed:@"jasmine.png"];
        break;
      case kZinnia:
        flowerImage = [UIImage imageNamed:@"zinnia.png"];
        break;
      default:
        flowerImage = nil;
        break;
    } 
    
    flowerView = [[[FlowerView alloc]  initWithImage:flowerImage] autorelease];
    [_flowerPool setObject:flowerView forKey:[NSNumber numberWithInteger:type]];
  }
  
  return flowerView;
}

- (void) dealloc {
  [_flowerPool release];
  [super dealloc];
}

@end
