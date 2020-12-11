//
//  ViewController.swift
//  SimpleFactory
//
//  Created by Qilin Hu on 2020/12/10.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 简单工厂模式
        var andy = JobApplicant(name: "Andy0570", email: "andy0570@example.com", status: .new)
        let emailFactory = EmailFactory(senderEmail: "about@example.com")
        print(emailFactory.createEmail(to: andy), "\n")
        
        andy.status = .interview
        print(emailFactory.createEmail(to: andy), "\n")
        
        andy.status = .hired
        print(emailFactory.createEmail(to: andy), "\n")
        
        /**
         Email(subject: "We Received Your Application", messageBody: "Thanks for apply for a job here!You should hear from us in 1~3 business days.", recipientEmail: "andy0570@example.com", senderEmail: "about@example.com")

         Email(subject: "We Want to Interview You", messageBody: "Thanks for your resume, Andy0570Can you come in for an interview in 30 minutes?", recipientEmail: "andy0570@example.com", senderEmail: "about@example.com")

         Email(subject: "We Want to Hire You", messageBody: "Congratulations, Andy0570We liked your code, and you smelled nice.We want to offer you a position! Cha-ching! $$$", recipientEmail: "andy0570@example.com", senderEmail: "about@example.com")
         */
    }

}

