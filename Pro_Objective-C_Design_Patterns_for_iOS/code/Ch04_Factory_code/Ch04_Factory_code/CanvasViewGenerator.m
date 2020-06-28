//
//  CanvasViewGenerator.m
//  Ch04_Factory_code
//
//  Created by Qilin Hu on 2020/6/18.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import "CanvasViewGenerator.h"

@implementation CanvasViewGenerator

- (CanvasView *)canvasViewWithFrame:(CGRect)aFrame {
    return [[CanvasView alloc] initWithFrame:aFrame];
}

@end
