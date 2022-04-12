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
    
    var method = sunnySideUpMethod()
    var count = 0
    private var segueIdentifier = "congratsFromRecipe"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        stepImage.image = UIImage(named: (method.imageStep![0]))
        methodTitle.text = method.methodName
        numberOfStepLabel.text = "1 of \(method.stepText!.count)"
        detailStepLabel.text = method.stepText![0]
        count += 1
    }
    
    @IBAction func nextStepPressed(_ sender: Any) {
        
        if count < method.stepText!.count {
            stepImage.fadeTransition(0.5, .push, .fromRight)
            detailStepLabel.fadeTransition(0.2, .fade, .fromBottom)
            stepImage.image = UIImage(named: (method.imageStep![count]))
            methodTitle.text = method.methodName
            numberOfStepLabel.text = "\(count + 1) of \(method.stepText!.count)"
            detailStepLabel.text = method.stepText![count]
            if count == method.stepText!.count - 1 {
                nextStepBtn.setTitle("Finish Cook", for: .normal)
            }
        } else {
            performSegue(withIdentifier: segueIdentifier, sender: self)
        }
        count += 1
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! CongratulationViewController
        vc.segueIdentifier = self.segueIdentifier
    }
    

}


