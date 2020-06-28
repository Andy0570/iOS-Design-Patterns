//
//  PaletteViewController.m
//  Ch08_Adapter_code
//
//  Created by Qilin Hu on 2020/6/20.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import "PaletteViewController.h"
#import "SetStrokeColorCommand.h"

@interface PaletteViewController () <SetStrokeColorCommandDelegate>

@end

@implementation PaletteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - <SetStrokeColorCommandDelegate>

// 通过传递红绿蓝引用参数返回独立的 RGB 值
- (void)command:(SetStrokeColorCommand *)command
        didRequestColorComponentsForRed:(CGFloat *)red
                                  green:(CGFloat *)green
                                   blue:(CGFloat *)blue {
    
}
// 颜色更新结束时，命令对象会把自己和更新后的颜色对象传递给适配器
- (void)command:(SetStrokeColorCommand *)command
        didFinishColorUpdateWithColor:(UIColor *)color {
    
}

@end
