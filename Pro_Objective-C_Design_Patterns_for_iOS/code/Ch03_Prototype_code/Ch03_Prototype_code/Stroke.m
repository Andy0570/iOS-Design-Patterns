//
//  Stroke.m
//  Ch03_Prototype_code
//
//  Created by Qilin Hu on 2020/6/17.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import "Stroke.h"

@interface Stroke ()
@property (nonatomic, strong) NSMutableArray *children; // 子节点
@end

@implementation Stroke
@synthesize size=size_, color=color_;
@dynamic location;

- (id)init {
    self = [super init];
    if (self) {
        _children = [[NSMutableArray alloc] initWithCapacity:5];
    }
    return self;
}

- (void)setLocation:(CGPoint)location {
    // 不做任何位置设定
}

- (CGPoint)location {
    // 返回第一个子节点的位置
    if ([_children count] > 0) {
        return [(id<Mark>)[_children objectAtIndex:0] location];
    }
    
    // 否则，返回原点
    return CGPointZero;
}

- (void)addMark:(id<Mark>)mark {
    [_children addObject:mark];
}

- (void)removeMark:(id<Mark>)mark {
    // 如果 mark 在这一层，将其移除并返回
    // 否则，让每个子节点去找它
    if ([_children containsObject:mark]) {
        [_children removeObject:mark];
    } else {
        [_children makeObjectsPerformSelector:@selector(removeMark:) withObject:mark];
    }
}

- (id <Mark>)childMarkAtIndex:(NSUInteger)index {
    if (index >= [_children count]) {
        return nil;
    }
    
    return [_children objectAtIndex:index];
}

// 返回最后子节点的便利方法
- (id <Mark>)lastChild {
    return [_children lastObject];
}

// 返回子节点数
- (NSUInteger)count {
    return [_children count];
}

#pragma mark - NSCopying method

- (id)copyWithZone:(NSZone *)zone; {
    Stroke *strokeCopy = [[[self class] allocWithZone:zone] init];
    
    // 复制 color
    [strokeCopy setColor:[UIColor colorWithCGColor:[color_ CGColor]]];
    
    // 复制 size
    [strokeCopy setSize:size_];
    
    // 复制子节点 children
    for (id <Mark> child in _children) {
        id <Mark> childCopy = [child copy];
        [strokeCopy addMark:childCopy];
    }
    
    return strokeCopy;
}

@end
