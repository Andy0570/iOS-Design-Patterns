//
//  GoogleAuthenticator.swift
//  AdapterPattern
//
//  Created by Qilin Hu on 2020/12/11.
//

import Foundation

// 适配第三方授权登录，以使其与 app 自身登录服务一起工作
// GoogleAuthenticator 和 GoogleUser 是第三方授权服务，因此不能更改

public class GoogleAuthenticator {
    public func login(email: String, password: String, completion: @escaping (GoogleUser?, Error?) -> Void) {
        // Make networking calls, which return a 'Token'
        let token = "special-token-value"
        let user = GoogleUser(email: email, password: password, token: token)
        completion(user, nil)
    }
}

public struct GoogleUser {
    public var email: String
    public var password: String
    public var token: String
}
