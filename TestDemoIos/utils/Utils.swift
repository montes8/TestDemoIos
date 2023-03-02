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
    
    
    static func setImageUrlService(urlMaggi : String?,row : RowListTableViewCell){
        if let urlString = urlMaggi {
            if let imgUrl = URL(string: urlString){
                DispatchQueue.global().async {
                    guard let imgData = try? Data(contentsOf: imgUrl) else {return}
                    let image = UIImage(data:imgData)
                    DispatchQueue.main.async {row.imgPhoto.image = image}
                }
            }
        }
    }
}
