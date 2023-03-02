//
//  HomeViewController.swift
//  TestDemoIos
//
//  Created by MacBook Pro on 1/03/23.
//

import UIKit

class HomeViewController: UIViewController {

    var nameUser : String?
    var urlMaggiT = "https://cloudfront-us-east-1.images.arcpublishing.com/radiomitre/ONIZUCDFUFGM5PFDSV7S2LBGVU.jpg"

    var listTest :[String] = []
    @IBOutlet weak var tbList: UITableView!
    @IBOutlet weak var nameUserT: UILabel!
    
    var networkList = NetworkListData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameUserT?.text = nameUser ?? ""
        tbList.register(UINib(nibName: "RowListTableViewCell", bundle: nil), forCellReuseIdentifier: "row")
        networkList.delegado = self
        tbList.delegate = self
        tbList.dataSource = self
        networkList.loadDataList()
   }
}

extension HomeViewController : IListRepositoryNetwork {
    
    func loasList(list: [String]) {
        listTest = list
        DispatchQueue.main.async {self.tbList.reloadData()}
    }
}

extension HomeViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listTest.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = tbList.dequeueReusableCell(withIdentifier: "row",for : indexPath) as! RowListTableViewCell
        row.nameUserT?.text = "Maggi Bravi \(listTest[indexPath.row])"
        row.descriptionUserT?.text = "Lucía Magdalena Ana Bravi (La Plata; 15 de octubre de 1988) más conocida como Magui Bravi, es una actriz, bailarina y presentadora argentina."
        
       Utils.setImageUrlService(urlMaggi: urlMaggiT,row: row)
        return row
    }
    
}



