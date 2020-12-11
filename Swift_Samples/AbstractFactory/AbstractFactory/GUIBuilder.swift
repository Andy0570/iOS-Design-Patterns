//
//  GUIBuilder.swift
//  AbstractFactory
//
//  Created by Qilin Hu on 2020/12/10.
//

import Foundation

/// 负责（使用具体工厂）创建具体控件
class GUIBuilder {
    public enum Style {
        case iOS
        case Andriod
    }
    
    private var style: Style
    private var guiFactory: AbstractGUIFactory?
    
    init(style: Style) {
        self.style = style
    }
    
    func initGUIFactory() -> Void {
        if nil != guiFactory {
            return
        }
        
        switch style {
        // 如果是 iOS 样式，则使用 iOSButton 的具体工厂类 iOSFactory
        case .iOS:
            guiFactory = iOSFactory()
        // 如果是 Andriod 样式，则使用 AndroidButton 的具体工厂类 AndroidFactory
        case .Andriod:
            guiFactory = AndroidFactory()
        }
    }
    
    // 创建按钮
    func buildButton() -> Button {
        initGUIFactory()
        return guiFactory!.createButton()
    }
    
    // 创建Alert
    func buildAlert() -> Alert {
        return guiFactory!.createAlert()
    }
}
