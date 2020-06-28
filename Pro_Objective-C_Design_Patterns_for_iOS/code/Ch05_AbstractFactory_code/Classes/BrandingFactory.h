//
//  BrandingFactory.h
//  AbstractFactory
//
//  Created by Carlo Chung on 11/1/10.
//  Copyright 2010 Carlo Chung. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 抽象工厂
 
 BrandingFactory 以类簇（class cluster）的形式实现
 其中，一组相关的子类组合在一起，由其超类创建。
 */
@interface BrandingFactory : NSObject 

// MARK: 抽象工厂方法，返回的是子类的实现
+ (BrandingFactory *)factory;

- (UIView *)brandedView;
- (UIButton *)brandedMainButton;
- (UIToolbar *)brandedToolbar;

@end
