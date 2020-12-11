//
//  ViewController.swift
//  AbstractFactory
//
//  Created by Qilin Hu on 2020/12/10.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 如果是 Andriod 样式，则使用 AndroidButton 的具体工厂类 AndroidFactory 创建按钮
        let androidBuilder = GUIBuilder(style: .Andriod)
        
        let androidButton = androidBuilder.buildButton()
        androidButton.setTitle("Be together, Not the same.")
        androidButton.show()
        
        // 如果是 iOS 样式，则使用 iOSButton 的具体工厂类 iOSFactory 创建按钮
        let iOSBuilder = GUIBuilder(style: .iOS)
        
        let iOSButton = iOSBuilder.buildButton()
        iOSButton.setTitle("Power is Power")
        iOSButton.show()
        
    }

}

