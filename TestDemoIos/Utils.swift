//
//  Utils.swift
//  TestDemoIos
//
//  Created by MacBook Pro on 28/02/23.
//

import UIKit

class Utils{
    static func validEmail(_ value: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}"
        return NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluate(with: value)
    }

    
    static func validPassword(_ value: String) -> Bool{
        if(value.count > 5){return true}else{return false}
    }
}
