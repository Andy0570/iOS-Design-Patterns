//
//  ClothCanvasViewGenerator.m
//  Ch04_Factory_code
//
//  Created by Qilin Hu on 2020/6/18.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import "ClothCanvasViewGenerator.h"

@implementation ClothCanvasViewGenerator

- (CanvasView *)canvasViewWithFrame:(CGRect)aFrame {
    return [[ClothCanvasView alloc] initWithFrame:aFrame];
}

@end
