//
//  DetailData.swift
//  Egg
//
//  Created by Zevira varies martan on 13/04/22.
//

import Foundation
import UIKit

struct DetailData {
    var imageTitles: [UIImage]
    var labelTitle: String
    var requiredMethod: String?
    var description: String
    var imageIcons: [UIImage]
    var labelIcons: [String]
    var labelBoldIcons: [String]
    var imageIngredients: [UIImage]
    var labelIngredients: [String]
    var imageTools: [UIImage]
    var labelTools: [String]
    var steps: [String]
    var quote: String
}

func getMethodDetail()->DetailData {
    return DetailData(
        imageTitles: [UIImage(named: "steps 5")!, UIImage(named: "steps 5")!, UIImage(named: "steps 5")!],
        labelTitle: "Sunny Side Up",
        description: "Sunny dide up ia an egg frying method without breaking the yolk or being turned over (undisturbed), with the yolk remaining visible and somewhat liquid inside, and transculent.",
        imageIcons: [UIImage(systemName: "timer")!, UIImage(systemName: "person.2")!],
        labelIcons: ["Ready in", "Serves for"],
        labelBoldIcons: ["10 mins", "2 people"],
        imageIngredients: [UIImage(named: "egg")!, UIImage(named: "oil spoon")!],
        labelIngredients: ["2 Eggs", "1 tbsp oil"],
        imageTools: [UIImage(named:"skillet pan")!, UIImage(named:"ramekin")!],
        labelTools: ["Medium Skillet + Lid", "Small Ramekin"],
        steps: ["Heat the pan", "Crack the egg", "Cook the egg"],
        quote: "\"Sunny side up egg is high in folic acid, an essential vitamin throughout pregnancy and good for weight loss.\"")
}

func getRecipeDetail()->DetailData {
    return DetailData(
        imageTitles: [UIImage(named: "avo finall 1")!, UIImage(named: "avo finall 1")!, UIImage(named: "avo finall 1")!],
        labelTitle: "Spicy Fried Egg Avocado Toast",
        requiredMethod: "Required Egg Method: Sunny Side Up",
        description: "Are you bored with your daily go-to breakfast toast and are looking for new toast creation that's super quick, easy yet tasty? if so, then try our Spicy Fried Egg Avocado Toast!",
        imageIcons: [UIImage(systemName: "hand.thumbsup")!, UIImage(systemName: "timer")!, UIImage(systemName: "person.2")!],
        labelIcons: ["would make this again", "Ready in", "Serves for"],
        labelBoldIcons: ["95%", "30 mins", "1 person"],
        imageIngredients: [UIImage(named: "bread")!, UIImage(named: "avocado")!, UIImage(named: "salt")!, UIImage(named: "pepper")!, UIImage(named: "steps 5")!, UIImage(named: "sriracha sauce")!],
        labelIngredients: ["Toasted Bread", "1/2 Avocado, Mashed", "Salt", "Pepper", "1 Sunny Side Egg", "1/2 tsp Sriracha Sauce"],
        imageTools: [UIImage(named: "bowl")!, UIImage(named: "avocado peeler")!, UIImage(named: "fork")!, UIImage(named: "plate")!],
        labelTools: ["Bowl", "Avocado Peeler", "Fork", "Serving Plate"],
        steps: ["Mash Avocado", "Spread avocado on toast", "Add Toppings"],
        quote: "\"For a healthier option, you can change the egg into boiled eggs and for tastier flavor, you can add cheese, garlics, or lemons.\"")
}


