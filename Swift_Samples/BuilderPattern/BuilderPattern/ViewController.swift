//
//  ViewController.swift
//  BuilderPattern
//
//  Created by Qilin Hu on 2020/12/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let burgerFlipper = Employee()
        
        guard let combol = try? burgerFlipper.createCombol() else {
            print("Sorry, no beef burgers here...")
            return
        }
        print("Beef burgers " + combol.description)
        
        guard let kittenBurger = try? burgerFlipper.createKittenSpecial() else {
            print("Sorry, no kitten burgers here...")
            return
        }
        print("Nom nom nom " + kittenBurger.description)
    }


}

/**
 Builder pattern 通过逐步提供输入来创建复杂对象，而不是通过初始化程序预先要求所有输入。
 
 当需要使用一系列操作创建复杂对象时，使用 builder pattern。
 
 如果 product 没有多个输入，或无法一步一步创建，那么生成器模式就不适合使用。
 */
