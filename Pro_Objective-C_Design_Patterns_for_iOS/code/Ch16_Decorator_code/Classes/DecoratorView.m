//
//  DecoratorView.m
//  Decorator
//
//  Created by Carlo Chung on 1/25/11.
//  Copyright 2011 Carlo Chung. All rights reserved.
//

#import "DecoratorView.h"


@implementation DecoratorView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
      [self setBackgroundColor:[UIColor clearColor]];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
  // Drawing code.
  [_image drawInRect:rect];
}


- (void)dealloc {
    [super dealloc];
}


@end
