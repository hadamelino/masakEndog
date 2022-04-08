//
//  MethodTableViewCell.swift
//  Egg
//
//  Created by Hada Melino Muhammad on 06/04/22.
//

import UIKit

class MethodTableViewCell: UITableViewCell {

    @IBOutlet weak var methodImage: UIImageView!
    @IBOutlet weak var methodLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
