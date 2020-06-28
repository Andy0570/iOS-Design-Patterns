//
//  CanvasViewController.h
//  Ch04_Factory_code
//
//  Created by Qilin Hu on 2020/6/18.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CanvasView.h"
#import "CanvasViewGenerator.h"

NS_ASSUME_NONNULL_BEGIN

/// MARK: 演示「工厂方法」模式
@interface CanvasViewController : UIViewController

- (void)loadCanvasViewWithGenerator:(CanvasViewGenerator *)generator;

- (void)setStrokeColor:(UIColor *)color;

@end

NS_ASSUME_NONNULL_END
