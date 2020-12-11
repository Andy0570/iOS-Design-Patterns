//
//  Hamburger.swift
//  BuilderPattern
//
//  Created by Qilin Hu on 2020/12/11.
//

import Foundation

// MARK: - Product 是创建的复杂对象

// Hamburger 有 Meat、Sauces、Toppings 三个属性。制作完成后不可修改成份。
public struct Hamburger {
    public let meat: Meat // 肉类
    public let sauces: Sauces // 调味汁
    public let toppings: Toppings // 浇头
}

extension Hamburger: CustomStringConvertible {
    public var description: String {
        return meat.rawValue + " github.com/andy0570"
    }
}

// 每个汉堡有且只有一种肉
public enum Meat: String {
    case beef
    case chicken
    case kitten
    case tofu
}

// OptionSet 允许添加多种调味汁
public struct Sauces: OptionSet {
    public static let mayonnaise = Sauces(rawValue: 1 << 0)
    public static let mustard = Sauces(rawValue: 1 << 1)
    public static let ketchup = Sauces(rawValue: 1 << 2)
    public static let secret = Sauces(rawValue: 1 << 3)
    
    public let rawValue: Int
    public init(rawValue: Int) {
        self.rawValue = rawValue
    }
}

// 允许添加多种浇头
public struct Toppings: OptionSet {
    public static let cheese = Toppings(rawValue: 1 << 0)
    public static let lettuce = Toppings(rawValue: 1 << 1)
    public static let pickles = Toppings(rawValue: 1 << 2)
    public static let tomatoes = Toppings(rawValue: 1 << 3)
    
    public let rawValue: Int
    public init(rawValue: Int) {
        self.rawValue = rawValue
    }
}
