//
//  Vertex.m
//  Ch03_Prototype_code
//
//  Created by Qilin Hu on 2020/6/17.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import "Vertex.h"

@implementation Vertex

// @dynamic 告诉编译器不要生成该属性的存取方法
@dynamic color, size;

- (id)initWithLocation:(CGPoint)location {
    self = [super init];
    if (self) {
        [self setLocation:location];
    }
    return self;
}

// 默认属性什么也不做
- (void)setColor:(UIColor *)color {}
- (UIColor *)color { return nil; }
- (void)setSize:(CGFloat)size {}
- (CGFloat)size { return 0.0; }

// Mark 操作什么也不做
- (void)addMark:(id <Mark>)mark {}
- (void)removeMark:(id <Mark>)mark {}
- (id <Mark>)childMarkAtIndex:(NSUInteger)index { return nil; }
- (id <Mark>)lastChild { return nil; }
- (NSUInteger)count { return 0; }
- (NSEnumerator *)enumerator { return nil; }

#pragma mark - NSCopying method

// 此方法需要实现，以支持备忘录
- (id)copyWithZone:(NSZone *)zone {
    /**
     1. 使用 [[self class] allocWithZone:zone] 生成新的 Vertex 实例。
     2. 用当前位置进行初始化。
     */
    Vertex *vertexCopy = [[[self class] allocWithZone:zone] initWithLocation:_location];
    return vertexCopy;
}


@end
