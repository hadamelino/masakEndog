//
//  DetailPageViewController.swift
//  Egg
//
//  Created by Zevira varies martan on 06/04/22.
//

import UIKit

class DetailPageViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var SegmentedControl: UISegmentedControl!
    @IBOutlet weak var itemsTableView: UITableView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var desc: UILabel!
    
    @IBOutlet weak var imgIcons: UIImageView!
    @IBOutlet weak var lblIcon: UILabel!
    @IBOutlet weak var lblBold: UILabel!
    
    @IBOutlet weak var imgIcons1: UIView!
    @IBOutlet weak var lblIcon1: UILabel!
    @IBOutlet weak var lblBold1: UILabel!
    
    @IBOutlet weak var step1: UILabel!
    @IBOutlet weak var step2: UILabel!
    @IBOutlet weak var step3: UILabel!
    
    @IBOutlet weak var quotes: UILabel!
    
    var detailData: DetailData?
    var prevPage: String = "fromRecipe"
    
    var imageData: [UIImage] = []
    var labelData: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if prevPage == "fromMethod" {
            detailData = getMethodDetail()
            
            detailData = getRecipeDetail()
            
            titleLabel.text = detailData?.labelTitle
            desc.text = detailData?.description
            
            lblBold.text = detailData?.labelBoldIcons[1]
            lblBold1.text =  detailData?.labelBoldIcons[2]
            
            step1.text = detailData?.steps[0]
            step2.text = detailData?.steps[1]
            step3.text = detailData?.steps[2]
            
            quotes.text = detailData?.quote
        }
        else {
            detailData = getRecipeDetail()
            
            titleLabel.text = detailData?.labelTitle
            desc.text = detailData?.description
            
            lblBold.text = detailData?.labelBoldIcons[1]
            lblBold1.text =  detailData?.labelBoldIcons[2]
            
            step1.text = detailData?.steps[0]
            step2.text = detailData?.steps[1]
            step3.text = detailData?.steps[2]
            
            quotes.text = detailData?.quote
        }
        
        itemsTableView.delegate = self
        itemsTableView.dataSource = self
        
        if let detail = detailData {
            imageData = detail.imageIngredients
            labelData = detail.labelIngredients
        }
        else {
            print("Failed to unwrap data!")
        }
        
        
    }
    
    @IBAction func goToTools(_ sender: Any) {
        
        if let detail = detailData {
            switch SegmentedControl.selectedSegmentIndex
            {
                case 0:
    //            print("Ingredients")
                imageData = detail.imageIngredients
                labelData = detail.labelIngredients
                self.itemsTableView.reloadData()
                
                case 1:
    //            print("Tools")
                imageData = detail.imageTools
                labelData = detail.labelTools
                self.itemsTableView.reloadData()
                
                default:
                    break
            }
        }
        else {
            print("Failed to unwrap data!")
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if SegmentedControl.selectedSegmentIndex == 0 {
//            if let detail = detailData {
                return detailData!.imageIngredients.count
//            }
        }
        else {
//            if let detail = detailData {
                return detailData!.imageTools.count
//            }
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemsCell", for: indexPath) as! ItemsTableViewCell
        
        if SegmentedControl.selectedSegmentIndex == 0 {
            cell.itemsImageView.image = self.detailData?.imageIngredients[indexPath.row]
            cell.itemsLabelView.text = self.detailData?.labelIngredients[indexPath.row]
        }
        else {
            cell.itemsImageView.image = self.detailData?.imageTools[indexPath.row]
            cell.itemsLabelView.text = self.detailData?.labelTools[indexPath.row]
        }
        
        cell.selectionStyle = .none
        return cell;
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return detailData!.imageTitles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! DetailPageCollectionViewCell
        
        cell.MyDetailPageImage.image = self.detailData?.imageTitles[indexPath.row]
        cell.MyDetailPageImage.layer.cornerRadius = 50.0
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: view.frame.width, height: view.frame.height / 4 + 50)
    }
    
    @IBAction func cookButton(_ sender: Any) {
    }
}
