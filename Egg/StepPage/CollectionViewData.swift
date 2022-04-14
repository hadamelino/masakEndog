//
//  CollectionViewData.swift
//  Egg
//
//  Created by Hada Melino Muhammad on 12/04/22.
//

import Foundation

struct CollectionViewData {
    
    var dataName: [String]
    var dataImage: [String]
}

func getRecipeData(_ forPage: String) -> CollectionViewData {
    if forPage == "method" {
        return CollectionViewData(dataName: ["Egg Avo Toast", "Egg & Potato"], dataImage: ["Avocado egg toast", "egg potato"])
    } else {
        return CollectionViewData(dataName: ["Egg & Potato", "Egg & Salad"], dataImage: ["egg potato", "egg salad"])
    }
}
    
func getMethodData() -> CollectionViewData {
    return CollectionViewData(dataName: ["Scrambled", "Poached"], dataImage: ["Scrambled eggs", "Poached eggs"])
}
