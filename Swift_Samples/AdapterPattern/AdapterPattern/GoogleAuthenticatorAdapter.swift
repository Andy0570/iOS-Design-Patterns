//
//  GoogleAuthenticatorAdapter.swift
//  AdapterPattern
//
//  Created by Qilin Hu on 2020/12/11.
//

import Foundation


// 创建一个遵守 AuthenticationService 协议的类。以创建「适配器」
public class GoogleAuthenticatorAdapter: AuthenticationService {
    private var authenticator = GoogleAuthenticator()
    
    public func login(email: String, password: String, success: @escaping (User, Token) -> Void, failure: @escaping (Error?) -> Void) {
        
        // 在适配器内部调用 Google 授权登录服务，并通过返回的 GoogleUser 创建 User 和 Token
        // 优点：如果 Google 更改了其授权信息结构，只需要在适配器修改即可让 App 恢复工作。
        authenticator.login(email: email, password: password) { (googleUser, error) in
            guard let googleUser = googleUser else {
                failure(error)
                return
            }
            
            let user = User(email: googleUser.email, password: googleUser.password)
            let token = Token(value: googleUser.token)
            success(user, token)
        }
    }
}
