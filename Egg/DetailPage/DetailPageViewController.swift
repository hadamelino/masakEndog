//
//  DetailPageViewController.swift
//  Egg
//
//  Created by Zevira varies martan on 06/04/22.
//

import UIKit

class DetailPageViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ingredientsImage.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemsCell", for: indexPath) as! ItemsTableViewCell
        
        cell.itemsImageView.image = self.ingredientsImage[indexPath.row]
        cell.itemsLabelView.text = self.ingredientsLabel[indexPath.row]
        return cell;
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return detailPageImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! DetailPageCollectionViewCell
        
        cell.MyDetailPageImage.image = self.detailPageImages[indexPath.row]
        cell.MyDetailPageImage.layer.cornerRadius = 50.0
        return cell
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            CGSize(width: 390, height: 302)
        }
    
    @IBOutlet weak var pic1: UIImageView!
    @IBOutlet weak var capt1: UILabel!
    @IBOutlet weak var pic2: UIImageView!
    @IBOutlet weak var capt2: UILabel!
    @IBOutlet weak var SegmentedControl: UISegmentedControl!
    @IBOutlet weak var itemsTableView: UITableView!
    
    var detailPageImages: [UIImage] = [UIImage(named: "steps 5")!, UIImage(named: "steps 5")!, UIImage(named: "steps 5")!]
    
    var ingredientsImage: [UIImage] = [UIImage(named: "egg")!, UIImage(named: "oil spoon")!]
    
    var ingredientsLabel: [String] = ["2 Eggs", "1 tbsp oil"]
    
    var toolsImages: [String] = ["", ""]
    var toolsLabel: [String] = ["", ""]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        itemsTableView.delegate = self
        itemsTableView.dataSource = self
    }
    
    @IBAction func goToTools(_ sender: Any) {
        switch SegmentedControl.selectedSegmentIndex
        {
            case 0:
            print("Ingredients")
            
            case 1:
           print("2nd page")
            
            default:
                break
        }
    }
    
    
    @IBAction func cookButton(_ sender: Any) {
    }
}
