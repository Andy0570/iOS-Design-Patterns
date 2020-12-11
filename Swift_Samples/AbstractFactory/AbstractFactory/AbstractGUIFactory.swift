//
//  AbstractGUIFactory.swift
//  AbstractFactory
//
//  Created by Qilin Hu on 2020/12/10.
//

import Foundation

/// 抽象工厂，AbstractGUIFactory 是一个协议，定义统一的接口方法
// 抽象工厂模式添加了一层抽象层来创建对象，抽象层定义通用接口，具体的创建过程由「具体工厂」实现。
protocol AbstractGUIFactory {
    func createButton() -> Button
    func createAlert() -> Alert
}

/// AndroidButton 的具体工厂类
class AndroidFactory: AbstractGUIFactory {
    func createButton() -> Button {
        return AndroidButton()
    }
    
    // 增加创建 Alert 的方法
    func createAlert() -> Alert {
        return AndroidAlert()
    }
}

/// iOSButton 的具体工厂类
class iOSFactory: AbstractGUIFactory {
    func createButton() -> Button {
        return iOSButton()
    }
    
    // 增加创建 Alert 的方法
    func createAlert() -> Alert {
        return iOSAlert()
    }
}
