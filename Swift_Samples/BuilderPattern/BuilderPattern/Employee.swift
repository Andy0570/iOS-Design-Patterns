//
//  Employee.swift
//  BuilderPattern
//
//  Created by Qilin Hu on 2020/12/11.
//

import Foundation

// MARK: - Director 接受输入并与 builder 协调

public class Employee {
    public func createCombol() throws -> Hamburger {
        let builder = HamburgerBuilder()
        try builder.setMeat(.beef)
        builder.addSauces(.secret)
        builder.addToppings([.lettuce, .tomatoes, .pickles])
        return builder.build()
    }
    
    public func createKittenSpecial() throws -> Hamburger {
        let builder = HamburgerBuilder()
        try builder.setMeat(.kitten)
        builder.addSauces(.mustard)
        builder.addToppings([.lettuce, .tomatoes])
        return builder.build()
    }
}
