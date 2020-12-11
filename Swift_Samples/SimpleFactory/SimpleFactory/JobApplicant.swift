//
//  JobApplicant.swift
//  SimpleFactory
//
//  Created by Qilin Hu on 2020/12/10.
//

import Foundation

public struct JobApplicant {
    
    // 候选求职者录取状态
    public enum Status {
        case new       // 新增
        case interview // 邀请面试
        case hired     // 录取
        case rejected  // 拒绝
    }
    
    public let name: String
    public let email: String
    public var status: Status
}
