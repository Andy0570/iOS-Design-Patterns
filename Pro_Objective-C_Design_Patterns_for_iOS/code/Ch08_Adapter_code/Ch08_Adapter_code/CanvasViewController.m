//
//  CanvasViewController.m
//  Ch04_Factory_code
//
//  Created by Qilin Hu on 2020/6/18.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import "CanvasViewController.h"


@interface CanvasViewController ()
@property (nonatomic, strong) UIColor *strokeColor;
@property (nonatomic, strong) CanvasView *canvasView;
@end

@implementation CanvasViewController

#pragma mark - View life cycle

// 实现 viewDidLoad 方法，进行视图加载后的追加设置
// 通常视图是从 nib 加载。
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 使用 CanvasViewGenerator 的工厂方法取得默认画布视图
    CanvasViewGenerator *defaultGenerator = [[CanvasViewGenerator alloc] init];
    [self loadCanvasViewWithGenerator:defaultGenerator];
}

#pragma mark - Public

- (void)loadCanvasViewWithGenerator:(CanvasViewGenerator *)generator {
    [self.canvasView removeFromSuperview];
    
    CGRect aFrame = CGRectMake(0, 0, 320, 436);
    CanvasView *aCanvasView = [generator canvasViewWithFrame:aFrame];
    self.canvasView = aCanvasView;
    [self.view addSubview:self.canvasView];
}

- (void)setStrokeColor:(UIColor *)color {
    self.strokeColor = color;
}

@end
