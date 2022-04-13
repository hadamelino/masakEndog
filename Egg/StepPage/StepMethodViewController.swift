//
//  StepMethodViewController.swift
//  Egg
//
//  Created by Hada Melino Muhammad on 09/04/22.
//

import UIKit

class StepMethodViewController: UIViewController {

    @IBOutlet weak var stepImage: UIImageView!
    @IBOutlet weak var methodTitle: UILabel!
    @IBOutlet weak var numberOfStepLabel: UILabel!
    @IBOutlet weak var detailStepLabel: UILabel!
    @IBOutlet weak var nextStepBtn: UIButton!
    
    // Edit this when linking all together
    var stepData: StepData?
    var previousPage = "method"
    // =========
    
    var count = 0
    private var segueIdentifier = ""
 
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.tabBar.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //navigationController?.isNavigationBarHidden = true
        navigationController?.navigationBar.prefersLargeTitles = false
        
        if previousPage == "method" {
            stepData = sunnySideUpMethod()
            segueIdentifier = "congratsFromMethod"
        } else {
            stepData = eggAvocadoToast()
            segueIdentifier = "awardsFromRecipe"
        }
        
        if let data = stepData {
            stepImage.image = UIImage(named: (data.stepImage[0]))
            methodTitle.text = data.stepTitle
            numberOfStepLabel.text = "1 of \(data.stepText.count)"
            detailStepLabel.text = data.stepText[0]
            navigationController?.navigationBar.topItem?.backButtonTitle = "Back"
            self.title = data.stepTitle
            count += 1
        } else {
            print("Failed to fetch data")
            return
        }
        
        
    }
    
    @IBAction func nextStepPressed(_ sender: Any) {
        
        if let data = stepData {
            if count < data.stepText.count {
                stepImage.fadeTransition(0.5, .push, .fromRight)
                detailStepLabel.fadeTransition(0.2, .fade, .fromBottom)
                stepImage.image = UIImage(named: (data.stepImage[count]))
                methodTitle.text = data.stepTitle
                numberOfStepLabel.text = "\(count + 1) of \(data.stepText.count)"
                detailStepLabel.text = data.stepText[count]
                if count == data.stepText.count - 1 {
                    nextStepBtn.setTitle("Finish Cook", for: .normal)
                }
            } else {
                performSegue(withIdentifier: segueIdentifier, sender: self)
            }
            count += 1
        } else {
            print("Failed to fetch data")
            return
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segueIdentifier == "congratsFromMethod" {
            let vc = segue.destination as! CongratulationViewController
            vc.segueIdentifier = self.segueIdentifier
            vc.navTitle = stepData?.stepTitle
        } else {
            let vc = segue.destination as! AwardsViewController
            vc.navTitle = stepData?.stepTitle
        }
        
    }
    

}


