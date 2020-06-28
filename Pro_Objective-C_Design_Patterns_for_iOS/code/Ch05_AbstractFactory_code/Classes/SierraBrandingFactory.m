//
//  SierraBrandingFactory.m
//  AbstractFactory
//
//  Created by Carlo Chung on 11/16/10.
//  Copyright 2010 Carlo Chung. All rights reserved.
//

#import "SierraBrandingFactory.h"
#import "SierraView.h"
#import "SierraMainButton.h"
#import "SierraToolbar.h"

@implementation SierraBrandingFactory

- (UIView*)brandedView {
    // 返回 Sierra 的自定义视图
	return [[[SierraView alloc] init] autorelease];
}

- (UIButton*)brandedMainButton {
    // 返回 Sierra 的自定义按钮
	return [[[SierraMainButton alloc] init] autorelease];
}

- (UIToolbar*)brandedToolbar {
    // 返回 Sierra 的自定义工具条
	return [[[SierraToolbar alloc] init] autorelease];
}

@end
