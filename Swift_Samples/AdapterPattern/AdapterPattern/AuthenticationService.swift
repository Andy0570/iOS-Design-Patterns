//
//  AuthenticationService.swift
//  AdapterPattern
//
//  Created by Qilin Hu on 2020/12/11.
//

import Foundation

public protocol AuthenticationService {
    func login(email: String,
               password: String,
               success:@escaping (User, Token) -> Void,
               failure:@escaping (Error?) -> Void)
}

public struct User {
    public let email: String
    public let password: String
}

public struct Token {
    public let value: String
}
