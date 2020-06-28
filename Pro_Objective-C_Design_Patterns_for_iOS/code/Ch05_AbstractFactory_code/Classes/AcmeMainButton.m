//
//  AcmeMainButton.m
//  AbstractFactory
//
//  Created by Carlo Chung on 11/1/10.
//  Copyright 2010 Carlo Chung. All rights reserved.
//

#import "AcmeMainButton.h"

@implementation AcmeMainButton

- (id)init {
    self = [super init];
	if (self) {
		[self setTitle:@"Acme" forState:UIControlStateNormal];
	}
	return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
	
}

@end
