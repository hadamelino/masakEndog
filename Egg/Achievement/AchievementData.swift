//
//  AchievementData.swift
//  Egg
//
//  Created by Syafitra Alfa Ridzi on 13/04/22.
//

import Foundation
import UIKit

struct AchievementData{
    var bannerLabel: [String]
    var bannerImage: [UIImage]
    var firstImage: [UIImage]
    var secondImage: [UIImage]
    var thirdImage: [UIImage]
    var firstLabel: [String]
    var secondLabel: [String]
    var thirdLabel: [String]
    var firstDetailLabel: [String]
    var secondDetailLabel: [String]
    var thirdDetailLabel: [String]
}

func getAchievementDetail()->AchievementData{
    return AchievementData(
        bannerLabel: ["Cooking Category", "Boiling Category", "Frying Category", "Bake & Steaming"],
        bannerImage: [UIImage(named: "banner")!, UIImage(named: "banner")!, UIImage(named: "banner")!, UIImage(named: "banner")! ],
        firstImage: [UIImage(named: "achievement 1")!, UIImage(named: "achievement 4")!, UIImage(named: "achievement 7")!, UIImage(named: "achievement 10")!],
        secondImage: [UIImage(named: "achievement 2")!, UIImage(named: "achievement 5")!, UIImage(named: "achievement 8")!, UIImage(named: "achievement 11")!],
        thirdImage: [UIImage(named: "achievement 3")!, UIImage(named: "achievement 6")!, UIImage(named: "achievement 9")!, UIImage(named: "achievement 12")!],
        firstLabel: ["Prep it All", "EGGcellent Day", "Harder tastes Better", "Bon Appetit"],
        secondLabel: ["Don’t stop me now", "Be the Best", "Simply the Best", "Chef de Cuisine"],
        thirdLabel: ["Adventure Begins", "World of Eggs", "Crispy Crust", "Best Served Hot"],
        firstDetailLabel: ["Serve all recipe", "Cook 10 boiling eggs", "Try upgraded recipe from frying method", "Serve 10 dishes from bake-steam method"],
        secondDetailLabel: ["Cook for 100 days","Complete all boil recipe", "Serve 10 dishes with fried eggs", "Serve every dish from bake-steam method"],
        thirdDetailLabel: ["Finish first tutorial", "Cook 10 recipe from boiling method", "Complete the frying egg methods", "Serve 15 dishes from bake-steam method"])
}
