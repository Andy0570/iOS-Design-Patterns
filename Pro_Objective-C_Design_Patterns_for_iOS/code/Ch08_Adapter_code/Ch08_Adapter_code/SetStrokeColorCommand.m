//
//  SetStrokeColorCommand.m
//  Ch08_Adapter_code
//
//  Created by Qilin Hu on 2020/6/20.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import "SetStrokeColorCommand.h"
#import "CoordinatingController.h"
#import "CanvasViewController.h"

@implementation SetStrokeColorCommand

- (void)execute {
    CGFloat redValue = 0.0;
    CGFloat greenValue = 0.0;
    CGFloat blueValue = 0.0;
    
    // 从委托取得 RGB 值
    [_delegate command:self didRequestColorComponentsForRed:&redValue green:&greenValue blue:&blueValue];
    
    // 根据 RGB 值创建一个颜色对象
    UIColor *color = [UIColor colorWithRed:redValue green:greenValue blue:blueValue alpha:1.0];
    
    // 把它赋值给当前的 CanvasViewController
    CoordinatingController *coordinator = [CoordinatingController sharedInstance];
    CanvasViewController *controller = coordinator.canvasViewController;
    [controller setStrokeColor:color];
    
    // 转发更新成功消息
    [_delegate command:self didFinishColorUpdateWithColor:color];
}

@end
