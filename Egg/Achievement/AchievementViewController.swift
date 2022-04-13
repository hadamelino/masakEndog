//
//  AchievementViewController.swift
//  Egg
//
//  Created by Syafitra Alfa Ridzi on 13/04/22.
//

import UIKit

class AchievementViewController: UIViewController {

    @IBOutlet weak var awardsSegmentedControl: UISegmentedControl!
    @IBOutlet weak var awardsTableView: UITableView!
    
    var colorArr:[UIColor]  = [.red, .gray, .cyan, .brown, .green, .blue, .black]
    var achievementData: AchievementData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        achievementData = getAchievementDetail()
        awardsTableView.register(UINib(nibName: "AchievementTableViewCell", bundle: nil), forCellReuseIdentifier: "AchievementTableViewCell")
        // Do any additional setup after loading the view.
    }
}

extension AchievementViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return achievementData!.bannerLabel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = awardsTableView.dequeueReusableCell(withIdentifier: "AchievementTableViewCell", for: indexPath) as! AchievementTableViewCell
        cell.bannerImage.image      = achievementData?.bannerImage[indexPath.row]
        cell.bannerLabel.text       = achievementData?.bannerLabel[indexPath.row]
        cell.firstImage.image       = achievementData?.firstImage[indexPath.row]
        cell.secondImage.image      = achievementData?.secondImage[indexPath.row]
        cell.thirdImage.image       = achievementData?.thirdImage[indexPath.row]
        cell.firstLabel.text        = achievementData?.firstLabel[indexPath.row]
        cell.secondLabel.text       = achievementData?.secondLabel[indexPath.row]
        cell.thirdLabel.text        = achievementData?.thirdLabel[indexPath.row]
        cell.firstDetailLabel.text  = achievementData?.firstDetailLabel[indexPath.row]
        cell.secondDetailLabel.text = achievementData?.secondDetailLabel[indexPath.row]
        cell.thirdDetailLabel.text  = achievementData?.thirdDetailLabel[indexPath.row]
        return cell
    }
}
