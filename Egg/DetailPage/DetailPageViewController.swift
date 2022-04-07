//
//  DetailPageViewController.swift
//  Egg
//
//  Created by Zevira varies martan on 06/04/22.
//

import UIKit

class DetailPageViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return detailPageImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! DetailPageCollectionViewCell
        
        cell.MyDetailPageImage.image = UIImage(named: detailPageImages[indexPath.row])
        cell.MyDetailPageImage.layer.cornerRadius = 50.0
        return cell
        
        
    }
    
    
    var detailPageImages: [String] = ["ss1", "ss2", "ss3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("Hello World")
    }
    

}
