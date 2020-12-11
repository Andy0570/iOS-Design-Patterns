//
//  ViewController.swift
//  AdapterPattern
//
//  Created by Qilin Hu on 2020/12/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let authService: AuthenticationService = GoogleAuthenticatorAdapter()
        
        authService.login(email: "user@example.com", password: "password") { (user, token) in
            print("Auth succeed:\(user.email), \(token.value)")
        } failure: { (error ) in
            
            if let error = error {
                print("Auth failed with error: \(error)")
            } else {
                print("Auth failed with error: no error provided.")
            }
        }
    }
}

/**
 ## 适配器模式
 
 iPhone 7 、 iPhone 7 Plus 及更新版本没有 3.5mm 耳机插孔，如果想要将 3.5mm 耳机插入闪电端口，则需要一个一端为 3.5mm 插孔，一端为 lighting 插孔的适配器。
 
 ## 何时使用 Adapter Pattern
 
 有些类、模块和函数不能被修改，特别是当其来自于第三方库。此时，可以使用 adapter design pattern 适配这些对象。
 */
