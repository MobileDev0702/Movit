//
//  ViewController.swift
//  Moveit
//
//  Created by WuSongBai on 2020/3/7.
//  Copyright © 2020 WuSongBai. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Down Keyboard...
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        
        view.endEditing(true)
    }

    @IBAction func onClickLoginButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "LoginToDeliveryVC", sender: nil)
    }
    
    @IBAction func onClickSignupButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "LoginToSignupVC", sender: nil)
    }
    
    @IBAction func onClickContinueButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "LoginToDeliveryVC", sender: nil)
    }
    
    @IBAction func onClickForgotButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "LoginToForgotVC", sender: nil)
    }
}

