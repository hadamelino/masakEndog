//
//  ItemsTableViewCell.swift
//  Egg
//
//  Created by Zevira varies martan on 12/04/22.
//

import UIKit

class ItemsTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var itemsImageView: UIImageView!
    @IBOutlet weak var itemsLabelView: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
