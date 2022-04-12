//
//  ViewController.swift
//  Egg
//
//  Created by Hada Melino Muhammad on 05/04/22.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UITableViewDataSource, UITableViewDelegate, UIScrollViewDelegate {


    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var methodTableView: UITableView!
    @IBOutlet weak var greyBackground: UIView!
    @IBOutlet weak var recipeCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.delegate = self
        collectionView.dataSource = self
        
        recipeCollectionView.delegate = self
        recipeCollectionView.dataSource = self
        
        methodTableView.delegate = self
        methodTableView.dataSource = self
        methodTableView.register(UINib(nibName: "MethodTableViewCell", bundle: nil), forCellReuseIdentifier: "methodCell")
        methodTableView.rowHeight = UITableView.automaticDimension
        methodTableView.separatorStyle = .none
        
        greyBackground.layer.borderWidth = 1.0
        greyBackground.layer.borderColor = UIColor(named: "customBorderGrey")?.cgColor
    }
    
    
    var bannerImage = "sample_image"
    var bannerText = "Eggs of the day"
    
    var methodTypeImage = ["water", "oil", "heat"]
    var methodTypeName = ["Water-based", "Oil-based", "Heat-based"]
    
    var recipeName = ["Egg Avo Toast", "Egg & Potato"]
    var recipeImage = ["avocado egg toast", "egg potato"]

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView.tag == 0 {
           return 3
            
        } else if collectionView.tag == 1 {
            return 2
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.collectionView {
            let bannerCell = collectionView.dequeueReusableCell(withReuseIdentifier: "bannerCell", for: indexPath) as! BannerCollectionViewCell
            bannerCell.bannerImage.image = UIImage(named: "banner1")
            bannerCell.bannerImage.layer.cornerRadius = 15
            return bannerCell
            
        } else if collectionView == self.recipeCollectionView {
            let recipeCell = collectionView.dequeueReusableCell(withReuseIdentifier: "recipeCell", for: indexPath) as! RecipeCollectionViewCell
            recipeCell.recipeImage.image = UIImage(named: recipeImage[indexPath.row])
            recipeCell.recipeImage.layer.cornerRadius = 15
            recipeCell.recipeName.text = recipeName[indexPath.row]
            return recipeCell
        }
        return UICollectionViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return methodTypeName.count
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "methodCell", for: indexPath) as! MethodTableViewCell
        cell.methodImage.image = UIImage(named: methodTypeImage[indexPath.row])
        cell.methodImage.layer.cornerRadius = 15
        cell.methodLabel.text = methodTypeName[indexPath.row]
        return cell
    }
    

}

