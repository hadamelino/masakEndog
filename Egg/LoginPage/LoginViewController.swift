//
//  LoginViewController.swift
//  Egg
//
//  Created by Hada Melino Muhammad on 12/04/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var signInBtn: UIButton!
    @IBOutlet weak var signUpBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signInBtn.layer.cornerRadius = 6
        signInBtn.layer.borderWidth = 1
        signInBtn.layer.borderColor = UIColor.black.cgColor
        
        signUpBtn.layer.borderWidth = 1
        signUpBtn.layer.cornerRadius = 6


        // Do any additional setup after loading the view.
    }
    
    @IBAction func signInButtonPressed(_ sender: Any) {
    }
    
    @IBAction func signUpButtonPressed(_ sender: Any) {
    }
    
    @IBAction func skipButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "goToHomepage", sender: self)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
