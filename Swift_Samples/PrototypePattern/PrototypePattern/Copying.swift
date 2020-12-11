//
//  Copying.swift
//  PrototypePattern
//
//  Created by Qilin Hu on 2020/12/11.
//

import Foundation

public protocol Copying: class {
    // 声明 required initializer 方法
    init(_ prototype: Self)
}

extension Copying {
    //  通常不直接调用初始化器，而是调用 copy() 方法
    public func copy() -> Self {
        // 通过 type(of: self) 获取当前对象类型
        return type(of: self).init(self)
    }
}
