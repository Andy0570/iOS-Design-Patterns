//
//  Vertex.h
//  Ch03_Prototype_code
//
//  Created by Qilin Hu on 2020/6/17.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import <UIKit/UIKit.h>
#import "Mark.h"

NS_ASSUME_NONNULL_BEGIN

/**
 Vertex 对象用于组成线条，并不包含颜色、大小等其他信息。
 
 目的：为绘图算法提供位置信息
 */
@interface Vertex : NSObject <Mark, NSCopying> 

@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGFloat size;
@property (nonatomic, assign) CGPoint location;
@property (nonatomic, readonly) NSUInteger count;
@property (nonatomic, readonly) id<Mark> lastChild;

- (id)initWithLocation:(CGPoint)location;
- (void)addMark:(id <Mark>)mark;
- (void)removeMark:(id <Mark>)mark;
- (id <Mark>)childMarkAtIndex:(NSUInteger)index;

@end

NS_ASSUME_NONNULL_END
