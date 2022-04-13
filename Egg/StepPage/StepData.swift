//
//  MethodStepData.swift
//  Egg
//
//  Created by Hada Melino Muhammad on 09/04/22.
//

import Foundation
import UIKit

struct StepData {
    var stepTitle: String
    var stepImage: [String]
    var stepText: [String]
}

func sunnySideUpMethod () -> StepData {
    return StepData(stepTitle: "Sunny Side Up",
                    stepImage: ["ss step 1", "ss step 2", "ss step 3", "ss step 4"],
                    stepText: ["Heat the oil in a medium nonstick skillet over low heat until                              slightly shimmering for about 5 minutes.",
                               "Crack an egg into a small ramekin and slowly add it to the skillet, repeat with the other egg, adding it to the other side of the skillet.",
                               "Cover with a tight lit and cook, uninteruupted, until the whites are completely set but the yolks are still runny for 2 to 2.5 minutes.",
                              "Slide the eggs out of the skillet onto a plate or toast. Season with salt and pepper (optional)"])
}

func eggAvocadoToast () -> StepData {
    return StepData(stepTitle: "Spicy Fried Egg Avocado Toast",
                    stepImage: ["eat step 1", "eat step 2", "eat step 3", "eat step 4", "eat step 5",                            "eat step 6"],
                    stepText: ["Cut half an avocado and peel of from its skin using a spoon or an avocado peeler.",
                               "Cut the peeled avocado into slices using fruit knives or use the knife in your avocado peeler and put them into a bowl",
                               "Using a fork, mash the avocado until it’s smooth but still has its texture. For additional taste, you can add salt and pepper before mashing the avocado.",
                              "Spread the mashed potato on top of the toasted bread according to your taste using fork or spoon or knife.",
                               "Using a spatula, put the sunny side up egg at the center top of the avocado-spreaded toast slowly.",
                               "Lastly,  put the siracha sauce on top of it all according to your taste. Enjoy!"])
}


