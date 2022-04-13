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
    var documentationData: DocumentationData?
    
    @IBAction func segmentedViewControlChange(_ sender: Any) {
        if awardsSegmentedControl.selectedSegmentIndex == 1{
            awardsTableView.rowHeight = 275
        }
        awardsTableView.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
        self.title = "Awards"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        achievementData     = getAchievementDetail()
        documentationData   = getDocumentationData()
        awardsTableView.register(UINib(nibName: "AchievementTableViewCell", bundle: nil), forCellReuseIdentifier: "AchievementTableViewCell")
        awardsTableView.register(UINib(nibName: "DocumentationTableViewCell", bundle: nil), forCellReuseIdentifier: "DocumentationTableViewCell")
    }
    
    
}

extension AchievementViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if awardsSegmentedControl.selectedSegmentIndex == 0 {
            return achievementData!.bannerLabel.count
        }else {
            return documentationData!.firstTitleLabel.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if awardsSegmentedControl.selectedSegmentIndex == 0 {
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
            cell.selectionStyle         = .none
            return cell
        }else {
            let cell = awardsTableView.dequeueReusableCell(withIdentifier: "DocumentationTableViewCell", for: indexPath) as! DocumentationTableViewCell
            cell.firstTitleLabel.text     = documentationData?.firstTitleLabel[indexPath.row]
            cell.secondTitleLabel.text    = documentationData?.secondTitleLabel[indexPath.row]
            cell.firstImage.image         = documentationData?.firstImage[indexPath.row]
            cell.secondImage.image        = documentationData?.secondImage[indexPath.row]
            cell.firstDatetimeLabel.text  = documentationData?.firstDatetimeLabel[indexPath.row]
            cell.secondDatetimeLabel.text = documentationData?.secondDatetimeLabel[indexPath.row]
            cell.firstImage.layer.cornerRadius  = 15
            cell.secondImage.layer.cornerRadius = 15
            cell.selectionStyle = .none
            return cell
        }
    }
}
