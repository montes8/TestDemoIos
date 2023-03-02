//
//  HomeViewController.swift
//  TestDemoIos
//
//  Created by MacBook Pro on 1/03/23.
//

import UIKit

class HomeViewController: UIViewController {

    var nameUser : String?
    
    @IBOutlet weak var nameUserT: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameUserT?.text = nameUser ?? ""
   }
    
}
