//
//  CoordinatingController.h
//  Ch08_Adapter_code
//
//  Created by Qilin Hu on 2020/6/20.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CanvasViewController;

NS_ASSUME_NONNULL_BEGIN

@interface CoordinatingController : UIViewController

@property (nonatomic, strong) CanvasViewController *canvasViewController;

+ (instancetype)sharedInstance;

@end

NS_ASSUME_NONNULL_END
