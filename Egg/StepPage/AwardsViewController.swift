//
//  AwardsViewController.swift
//  Egg
//
//  Created by Hada Melino Muhammad on 14/04/22.
//

import UIKit

class AwardsViewController: UIViewController {

    @IBOutlet weak var awardsImage: UIImageView!
    @IBOutlet weak var awardsName: UILabel!
    @IBOutlet weak var awardsDesc: UILabel!
    @IBOutlet weak var continueBtn: UIButton!
    
    var navTitle: String?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
        tabBarController?.tabBar.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        continueBtn.layer.cornerRadius = 15
        awardsImage.image = UIImage(named: "achievement 3")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
        tabBarController?.tabBar.isHidden = true
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func continuePressed(_ sender: Any) {
        performSegue(withIdentifier: "awardsToCongrats", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! CongratulationViewController
        vc.segueIdentifier = "awardsToCongrats"
        vc.navTitle = navTitle
    }
    
}
