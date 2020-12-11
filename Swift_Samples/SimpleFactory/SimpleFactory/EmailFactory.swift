//
//  EmailFactory.swift
//  SimpleFactory
//
//  Created by Qilin Hu on 2020/12/10.
//

import Foundation

public struct EmailFactory {
    public let senderEmail: String
    
    // 工厂方法，根据求职者（JobApplicant）的不同状态，自动生成不同的邮件（Email）
    public func createEmail(to recipient: JobApplicant) -> Email {
        let subject: String
        let messageBody: String
        
        switch recipient.status {
        case .new:
            subject = "We Received Your Application"
            messageBody = "Thanks for apply for a job here!" + "You should hear from us in 1~3 business days."
        
        case .interview:
            subject = "We Want to Interview You"
            messageBody = "Thanks for your resume, \(recipient.name)" + "Can you come in for an interview in 30 minutes?"
            
        case .hired:
            subject = "We Want to Hire You"
            messageBody = "Congratulations, \(recipient.name)" + "We liked your code, and you smelled nice." + "We want to offer you a position! Cha-ching! $$$"
        
        case .rejected:
            subject = "Thanks for Your Application"
            messageBody = "Thank you for application, \(recipient.name)!" + "We have decided to move forward with other candidates." + "Please remember to wear pants next time!"
        }
        
        return Email(subject: subject,
                     messageBody: messageBody,
                     recipientEmail: recipient.email,
                     senderEmail: senderEmail)
    }
}
