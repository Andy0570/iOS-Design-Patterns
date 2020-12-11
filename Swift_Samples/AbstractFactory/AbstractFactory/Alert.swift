//
//  Alert.swift
//  AbstractFactory
//
//  Created by Qilin Hu on 2020/12/11.
//

import Foundation

/// 要创建的对象，Alert
protocol Alert {
    func setTitle(_ title: String) -> Void
    func show() -> Void
}

// AndroidAlert 遵守 Alert 协议
class AndroidAlert: Alert {
    private var title: String?
    
    func setTitle(_ title: String) {
        self.title = title;
    }
    
    func show() {
        print("Showing Android style Alert. Title: \(title ?? "Default Title")")
    }
}

// iOSAlert 遵守 Alert 协议
class iOSAlert: Alert {
    private var title: String?
    
    func setTitle(_ title: String) {
        self.title = title;
    }
    
    func show() {
        print("Showing iOS style Alert. Title: \(title ?? "Default Title")")
    }
}
