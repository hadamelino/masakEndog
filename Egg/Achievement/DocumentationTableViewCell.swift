//
//  DocumentationTableViewCell.swift
//  Egg
//
//  Created by Syafitra Alfa Ridzi on 14/04/22.
//

import UIKit

class DocumentationTableViewCell: UITableViewCell {
    
    @IBOutlet weak var firstImage: UIImageView!
    @IBOutlet weak var secondImage: UIImageView!
    @IBOutlet weak var firstTitleLabel: UILabel!
    @IBOutlet weak var secondTitleLabel: UILabel!
    @IBOutlet weak var firstDatetimeLabel: UILabel!
    @IBOutlet weak var secondDatetimeLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
