//
//  Button.swift
//  AbstractFactory
//
//  Created by Qilin Hu on 2020/12/10.
//

import Foundation

/// 要创建的对象，Button 按钮
protocol Button {
    func setTitle(_ title: String) -> Void
    func show() -> Void
}

// AndroidButton 类遵守 <Button> 协议
class AndroidButton: Button {
    private var title: String?
    
    func setTitle(_ title: String) {
        self.title = title
    }
    
    func show() {
        print("Showing Android style button. Title: \(title ?? "Default Title")")
    }
}

// iOSButton 类遵守 <Button> 协议
class iOSButton: Button {
    private var title: String?
    
    func setTitle(_ title: String) {
        self.title = title
    }
    
    func show() {
        print("Showing iOS style button. Title: \(title ?? "Default Title")")
    }
}
