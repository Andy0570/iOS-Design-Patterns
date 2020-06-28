//
//  SetStrokeColorCommand.h
//  Ch08_Adapter_code
//
//  Created by Qilin Hu on 2020/6/20.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import "Command.h"
#import <CoreGraphics/CoreGraphics.h>
#import <UIKit/UIKit.h>
@class SetStrokeColorCommand;

NS_ASSUME_NONNULL_BEGIN

/// !!!: 该 Delegate 在适配器模式中扮演「目标接口（Target）」的角色
@protocol SetStrokeColorCommandDelegate <NSObject>

// 通过传递红绿蓝引用参数返回独立的 RGB 值
- (void)command:(SetStrokeColorCommand *)command
        didRequestColorComponentsForRed:(CGFloat *)red
                                  green:(CGFloat *)green
                                   blue:(CGFloat *)blue;
// 颜色更新结束时，命令对象会把自己和更新后的颜色对象传递给适配器
- (void)command:(SetStrokeColorCommand *)command
        didFinishColorUpdateWithColor:(UIColor *)color;

@end

/// 命令模式
@interface SetStrokeColorCommand : Command

@property (nonatomic, weak) id<SetStrokeColorCommandDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
