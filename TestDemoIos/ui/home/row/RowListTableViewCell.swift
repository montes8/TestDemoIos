//
//  RowListTableViewCell.swift
//  TestDemoIos
//
//  Created by MacBook Pro on 2/03/23.
//

import UIKit

class RowListTableViewCell: UITableViewCell {
    
    
    
    @IBOutlet weak var imgPhoto: UIImageView!
    
    @IBOutlet weak var descriptionUserT: UILabel!
    
    @IBOutlet weak var nameUserT: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
