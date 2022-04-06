//
//  ViewController.swift
//  Egg
//
//  Created by Hada Melino Muhammad on 05/04/22.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UITableViewDataSource, UITableViewDelegate {


    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var methodTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.delegate = self
        collectionView.dataSource = self
        
        methodTableView.delegate = self
        methodTableView.dataSource = self
        methodTableView.register(UINib(nibName: "MethodTableViewCell", bundle: nil), forCellReuseIdentifier: "methodCell")
        methodTableView.rowHeight = UITableView.automaticDimension
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
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "methodCell", for: indexPath) as! MethodTableViewCell
        cell.methodImage.image = UIImage(named: bannerImage)
        cell.methodImage.layer.cornerRadius = 15
       cell.methodLabel.text = bannerText
        return cell
    }
    

}

