//
//  CollectionViewData.swift
//  Egg
//
//  Created by Hada Melino Muhammad on 12/04/22.
//

import Foundation

struct CollectionViewData {
    
    var dataName: [String]?
    var dataImage: [String]?
    
    func getRecipeData() -> CollectionViewData {
        return CollectionViewData(dataName: [], dataImage: [])
    }
    
    func getMethodData() -> CollectionViewData {
        return CollectionViewData(dataName: [], dataImage: [])
    }

}
