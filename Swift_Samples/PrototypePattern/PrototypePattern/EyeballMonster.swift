//
//  EyeballMonster.swift
//  PrototypePattern
//
//  Created by Qilin Hu on 2020/12/11.
//

import Foundation

// EyeballMonster 是 Monster 的子类，同时添加了 redness 属性
public class EyeballMonster: Monster {
    public var redness = 0
    
    // 在初始化方法为新增加的属性赋值
    public init(health: Int, level: Int, redness: Int) {
        self.redness = redness
        super.init(health: health, level: level)
    }
    
    // 禁止 Monster 的子类调用 init(_ monster:) 方法，而应调用 copy() 方法
    // 将 init(_ monster:) 方法标记为不可用，避免调用错误
    @available (*, unavailable, message: "Call copy() instead")
    public required convenience init(_ prototype: Monster) {
        let eyeballMonster = prototype as! EyeballMonster
        self.init(health: eyeballMonster.health,
                  level: eyeballMonster.level,
                  redness: eyeballMonster.redness)
    }
}
