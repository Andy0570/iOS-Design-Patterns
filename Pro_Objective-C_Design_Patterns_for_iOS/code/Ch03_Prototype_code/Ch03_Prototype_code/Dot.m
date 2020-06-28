//
//  Dot.m
//  Ch03_Prototype_code
//
//  Created by Qilin Hu on 2020/6/17.
//  Copyright © 2020 Shanghai Haidian Information Technology Co.Ltd. All rights reserved.
//

#import "Dot.h"

@implementation Dot

- (void)dealloc {
    
}

#pragma mark - NSCopying method

- (id)copyWithZone:(NSZone *)zone {
    Dot *dotCopy = [[[self class] allocWithZone:zone] initWithLocation:self.location];
    
    // 复制 color
    [dotCopy setColor:[UIColor colorWithCGColor:[self.color CGColor]]];
    
    // 复制 size
    [dotCopy setSize:self.size];
    
    return dotCopy;
}

@end
