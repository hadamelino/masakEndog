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
    

    var segueIdentifier:String = ""
    var navTitle: String?
    var recipeData: CollectionViewData?
    var methodData: CollectionViewData?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.tabBar.isHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        self.title = navTitle
        navigationController?.navigationBar.prefersLargeTitles = false
        print(segueIdentifier)
        recipeCV.delegate = self
        recipeCV.dataSource = self
        recipeData = getRecipeData("method")
        recipeImage.image = UIImage(named: "ssu_congrats")
        
        if segueIdentifier == "awardsToCongrats" {
            otherMethodCV.delegate = self
            otherMethodCV.dataSource = self
            recipeImage.image = UIImage(named: "Avocado egg toast")
            methodData = getMethodData()
            recipeData = getRecipeData("recipe")
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
        if segueIdentifier == "awardsToCongrats" {
            if collectionView.tag == 0 {
                return recipeData!.dataName.count
                
            } else if collectionView.tag == 1 {
                return methodData!.dataName.count
            }
        } else {

            return recipeData!.dataName.count
            
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if segueIdentifier == "awardsToCongrats" {
            if collectionView.tag == 0 {
                
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "recipeCell", for: indexPath) as! CongratulationCollectionViewCell
                cell.contentName.text = recipeData!.dataName[indexPath.row]
                cell.contentImage.image = UIImage(named: recipeData!.dataImage[indexPath.row])
                cell.layer.cornerRadius = 15
                return cell
                
            } else if collectionView.tag == 1 {
                
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "otherMethodCell", for: indexPath) as! CongratulationCollectionViewCell
                cell.contentName.text = methodData!.dataName[indexPath.row]
                cell.contentImage.image = UIImage(named: methodData!.dataImage[indexPath.row])
                cell.layer.cornerRadius = 15

                return cell
                
            }
        } else {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "recipeCell", for: indexPath) as! CongratulationCollectionViewCell
            cell.contentName.text = recipeData!.dataName[indexPath.row]
            cell.contentImage.image = UIImage(named: recipeData!.dataImage[indexPath.row])
            cell.layer.cornerRadius = 15

            return cell
            
        }
        
        return UICollectionViewCell()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if segueIdentifier != "awardsToCongrats" {
            if indexPath.row == 0 {
                let vc = UIStoryboard(name: "DetailPageStoryboard", bundle: nil).instantiateViewController(withIdentifier: "fromMethod") as! DetailPageViewController
                vc.prevPage = "fromRecipe"
                self.navigationController?.pushViewController(vc, animated: true)
            }
        }
    }

}
