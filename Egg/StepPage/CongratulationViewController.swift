//
//  CongratulationViewController.swift
//  Egg
//
//  Created by Hada Melino Muhammad on 11/04/22.
//

import UIKit

class CongratulationViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    

    @IBOutlet weak var recipeImage: UIImageView!
    @IBOutlet weak var reciveCVLabel: UILabel!
    @IBOutlet weak var methodCVLable: UILabel!
    @IBOutlet weak var recipeCV: UICollectionView!
    @IBOutlet weak var otherMethodCV: UICollectionView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentVIew: UIView!
    

    var recipesRecommendation:[String] = []
    var segueIdentifier:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        recipeCV.delegate = self
        recipeCV.dataSource = self
        
        if segueIdentifier == "congratsFromRecipe" {
            otherMethodCV.delegate = self
            otherMethodCV.dataSource = self
        }
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let contentRect: CGRect = scrollView.subviews.reduce(into: .zero) { rect, view in
            rect = rect.union(view.frame)
        }
        scrollView.contentSize = contentRect.size
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CongratulationCollectionViewCell
        cell.contentImage.image = UIImage(imageLiteralResourceName: "ss2")
        cell.contentName.text = "Hello"
        return cell
    }

}
