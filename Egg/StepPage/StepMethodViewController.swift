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
    var previousPage = "recipe"
    // =========
    
    var count = 0
    private var segueIdentifier = "congratsFromRecipe"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if previousPage == "method" {
            stepData = sunnySideUpMethod()
        } else {
            stepData = eggAvocadoToast()
        }
        
        if let data = stepData {
            stepImage.image = UIImage(named: (data.stepImage[0]))
            methodTitle.text = data.stepTitle
            numberOfStepLabel.text = "1 of \(data.stepText.count)"
            detailStepLabel.text = data.stepText[0]
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
        let vc = segue.destination as! CongratulationViewController
        vc.segueIdentifier = self.segueIdentifier
    }
    

}


