//
//  ViewController.swift
//  Egg
//
//  Created by Hada Melino Muhammad on 05/04/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    var bannerImage = "sample_image"
    var bannerText = "Eggs of the day"

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "bannerCell", for: indexPath) as! BannerCollectionViewCell
        cell.bannerImage.image = UIImage(named: bannerImage)
        cell.bannerImage.layer.cornerRadius = 15
        cell.bannerText.text = bannerText
        return cell
    }
    

}

