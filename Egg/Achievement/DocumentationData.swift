//
//  DocumentationData.swift
//  Egg
//
//  Created by Syafitra Alfa Ridzi on 14/04/22.
//

import Foundation
import UIKit

struct DocumentationData{
    var firstImage: [UIImage]
    var secondImage: [UIImage]
    var firstTitleLabel: [String]
    var secondTitleLabel: [String]
    var firstDatetimeLabel: [String]
    var secondDatetimeLabel: [String]
}

func getDocumentationData()->DocumentationData{
    return DocumentationData(
        firstImage: [UIImage(named: "kamera")!, UIImage(named: "avocado_toast")!],
        secondImage: [UIImage(named: "sunny_side_toast")!,UIImage(named: "perfect_soft_boiled")!],
        firstTitleLabel: ["", "Avocado Toast"],
        secondTitleLabel: ["Sunny Side Toast", "Perfect Soft Boiled"],
        firstDatetimeLabel: ["", "Mon, 30 Feb 2022"],
        secondDatetimeLabel: ["Mon, 30 Feb 2022", "Mon, 30 Feb 2022"])
}
    
