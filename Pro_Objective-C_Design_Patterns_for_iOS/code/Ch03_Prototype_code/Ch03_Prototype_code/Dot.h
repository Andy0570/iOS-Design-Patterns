//
//  Dot.h
//  Ch03_Prototype_code
//
//  Created by Qilin Hu on 2020/6/17.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import "Vertex.h"

NS_ASSUME_NONNULL_BEGIN

@interface Dot : Vertex <Mark, NSCopying>

@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGFloat size;

@end

NS_ASSUME_NONNULL_END
