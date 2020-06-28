//
//  AcmeBrandingFactory.m
//  AbstractFactory
//
//  Created by Carlo Chung on 11/1/10.
//  Copyright 2010 Carlo Chung. All rights reserved.
//

#import "AcmeBrandingFactory.h"
#import "AcmeView.h"
#import "AcmeMainButton.h"
#import "AcmeToolbar.h"


@implementation AcmeBrandingFactory

- (UIView *)brandedView {
    // 返回 Acme 的自定义视图
	return [[[AcmeView alloc] init] autorelease];
}

- (UIButton *)brandedMainButton {
    // 返回 Acme 的自定义按钮
	return [[[AcmeMainButton alloc] init] autorelease];
}

- (UIToolbar *)brandedToolbar {
    // 返回 Acme 的自定义工具条
	return [[[AcmeToolbar alloc] init] autorelease];
}

@end
