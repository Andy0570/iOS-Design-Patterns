//
//  Monster.swift
//  PrototypePattern
//
//  Created by Qilin Hu on 2020/12/11.
//

import Foundation

public class Monster: Copying {
    public var health: Int
    public var level: Int
    
    public init(health: Int, level: Int) {
        self.health = health
        self.level = level
    }
    
    // 为了遵守 Copying 协议，必须将 init(_ prototype:) 声明为 required。
    // 同时可以将 designated initializer 标记为 convenience 。
    public required convenience init(_ monster: Monster) {
        self.init(health: monster.health, level: monster.level)
    }
}
