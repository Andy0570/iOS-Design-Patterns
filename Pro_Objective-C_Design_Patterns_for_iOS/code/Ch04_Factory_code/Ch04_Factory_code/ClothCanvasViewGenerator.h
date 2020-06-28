//
//  ClothCanvasViewGenerator.h
//  Ch04_Factory_code
//
//  Created by Qilin Hu on 2020/6/18.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import "CanvasViewGenerator.h"
#import "ClothCanvasView.h"

NS_ASSUME_NONNULL_BEGIN

@interface ClothCanvasViewGenerator : CanvasViewGenerator

- (CanvasView *)canvasViewWithFrame:(CGRect)aFrame;

@end

NS_ASSUME_NONNULL_END
