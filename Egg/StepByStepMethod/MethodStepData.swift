//
//  MethodStepData.swift
//  Egg
//
//  Created by Hada Melino Muhammad on 09/04/22.
//

import Foundation

struct MethodStepData {
    var methodName: String?
    var imageStep: [String]?
    var stepText: [String]?
}

func sunnySideUpMethod () -> MethodStepData {
    var sunnySideUp = MethodStepData()
    sunnySideUp.methodName = "Sunny Side Up"
    sunnySideUp.imageStep = ["oil", "ss1", "ss2", "ss3"]
    sunnySideUp.stepText = ["Heat the oil in a medium nonstick skillet over low heat until                              slightly shimmering for about 5 minutes.",
                            "Crack an egg into a small ramekin and slowly add it to the skillet, repeat with the other egg, adding it to the other side of the skillet.",
                            "Cover with a tight lit and cook, uninteruupted, until the whites are completely set but the yolks are still runny for 2 to 2.5 minutes.",
                           "Slide the eggs out of the skillet onto a plate or toast. Season with salt and pepper (optional)"
                            ]
    return sunnySideUp
}
