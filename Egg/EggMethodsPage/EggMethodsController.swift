//
//  EggMethodsController.swift
//  Egg
//
//  Created by Syafitra Alfa Ridzi on 07/04/22.
//

import UIKit

class EggMethodsController: UIViewController {
    
    
    @IBOutlet weak var methodsCollection: UICollectionView!
//    var methodImage : [UIImage] = [UIImage(named: "OverEasy")!, UIImage(named: "Scrambled")!, UIImage(named: "SunnySideUp")!]
    var methodImage:[UIColor] = [.red, .blue, .gray, .green, .black, .brown, .cyan]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "Oil-Based"
        methodsCollection.register(UINib(nibName: "MethodsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "MethodsCollectionViewCell")
        
    }
}

extension EggMethodsController:UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.methodImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MethodsCollectionViewCell", for: indexPath) as! MethodsCollectionViewCell
        cell.methodImageContainer.backgroundColor = self.methodImage[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayiut:UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width-4, height: 160)
    }
}
