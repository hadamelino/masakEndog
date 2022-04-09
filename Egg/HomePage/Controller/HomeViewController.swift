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
    
    
    var bannerImage = "banner1"
    var bannerText = "Make a Perfect Sunny Side Up"

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let banner_cell = collectionView.dequeueReusableCell(withReuseIdentifier: "bannerCell", for: indexPath) as! BannerCollectionViewCell
        banner_cell.bannerImage.image = UIImage(named: bannerImage)
        banner_cell.bannerImage.layer.cornerRadius = 15
        banner_cell.bannerText.text = bannerText
        return banner_cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "methodCell", for: indexPath) as! MethodTableViewCell
        cell.methodImage.image = UIImage(named: "sample_image")
        cell.methodImage.layer.cornerRadius = 15
       cell.methodLabel.text = bannerText
        return cell
    }
    

}

