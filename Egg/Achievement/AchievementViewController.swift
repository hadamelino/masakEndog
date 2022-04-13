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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        awardsTableView.register(UINib(nibName: "AchievementTableViewCell", bundle: nil), forCellReuseIdentifier: "AchievementTableViewCell")
        // Do any additional setup after loading the view.
    }
}

extension AchievementViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = awardsTableView.dequeueReusableCell(withIdentifier: "AchievementTableViewCell", for: indexPath) as! AchievementTableViewCell
        cell.achievementCellView.backgroundColor = colorArr[indexPath.row]
        return cell
    }
    
    
}
