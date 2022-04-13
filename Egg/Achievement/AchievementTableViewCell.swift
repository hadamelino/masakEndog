//
//  AchievementTableViewCell.swift
//  Egg
//
//  Created by Syafitra Alfa Ridzi on 13/04/22.
//

import UIKit

class AchievementTableViewCell: UITableViewCell {

    @IBOutlet weak var achievementCellView: UIView!
    @IBOutlet weak var bannerImage: UIImageView!
    @IBOutlet weak var bannerLabel: UILabel!
    @IBOutlet weak var firstImage: UIImageView!
    @IBOutlet weak var secondImage: UIImageView!
    @IBOutlet weak var thirdImage: UIImageView!
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var firstDetailLabel: UILabel!
    @IBOutlet weak var secondDetailLabel: UILabel!
    @IBOutlet weak var thirdDetailLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
