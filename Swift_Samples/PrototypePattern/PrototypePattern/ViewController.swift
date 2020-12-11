//
//  ViewController.swift
//  PrototypePattern
//
//  Created by Qilin Hu on 2020/12/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: 原型模式（prototype pattern）
        // 通过复制已有对象的方式创建对象，被复制的实例就是原型
        
        // 创建 Monster 的实例，复制后得到 monster2
        let monster = Monster(health: 700, level: 37)
        let monster2 = monster.copy()
        print("Watch out! That monster's level is \(monster2.level)")
        
        // 创建 EyeballMonster 实例，复制后得到 eyeball2
        let eyeball = EyeballMonster(health: 3002, level: 69, redness: 648)
        let eyeball2 = eyeball.copy()
        print("Eww! its eyeball redness is \(eyeball2.redness)")
        
        // 从 Monster 创建 EyeballMonster
//        let eyeball3 = EyeballMonster(monster)
    }


}


/**
 // !!!: 总结
 
 
 Prototype pattern 允许对象复制自身，其包括两部分：Copying 协议和原型（prototype）。
 Copying 协议声明复制的方法，prototype 遵守 Copying 协议。
 Foundation 框架提供 NSCopying 协议，但该协议在 Swift 中表现不佳。你可以轻松推出自己的 Copying 协议，而无需依赖 Foundation 或任何框架。
 创建 Copying 协议的关键在于创建 copy initializer，并实现 init(_ prototype:) 方法。
 
 参考：
 <https://github.com/pro648/tips/wiki/%E5%8E%9F%E5%9E%8B%E6%A8%A1%E5%BC%8F-Prototype-Pattern>
 <https://medium.com/jeremy-codes/prototype-pattern-in-swift-1b50517d1075>
 */

