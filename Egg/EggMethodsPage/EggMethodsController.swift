//
//  EggMethodsController.swift
//  Egg
//
//  Created by Syafitra Alfa Ridzi on 07/04/22.
//

import UIKit

class EggMethodsController: UIViewController {
    
    
    @IBOutlet weak var methodsCollection: UICollectionView!
    var methodImage : [UIImage] = [UIImage(named: "OverEasy")!, UIImage(named: "SunnySideUp")!, UIImage(named: "Scrambled")!]
    var methodLabel : [String]  = ["Over Easy", "Sunny Side Up", "Scrambled"]
    
    lazy var darkShadow: CALayer = {
        let darkShadow = CALayer()
        darkShadow.cornerRadius     = 15
        darkShadow.shadowColor      = UIColor.red.cgColor
        darkShadow.shadowOffset     = .init(width: 1, height: 1)
        darkShadow.shadowOpacity    = 1
        darkShadow.shadowRadius     = 3
        return darkShadow
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Oil-Based"
        navigationController?.navigationBar.topItem?.backButtonTitle = "Back"
        
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
        cell.methodImage.image  = self.methodImage[indexPath.row]
        cell.methodLabel.text   = self.methodLabel[indexPath.row]
        cell.methodImage.layer.cornerRadius     = 15
        cell.methodView.layer.cornerRadius      = 15
        cell.methodView.layer.addSublayer(darkShadow)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 334, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 1 {
            let vc = UIStoryboard(name: "DetailPageStoryboard", bundle: nil).instantiateViewController(withIdentifier: "fromMethod") as! DetailPageViewController
            vc.prevPage = "fromMethod"
            self.navigationController?.pushViewController(vc, animated: true)
            //performSegue(withIdentifier: "goToDetail", sender: self)
        }
    }
}

