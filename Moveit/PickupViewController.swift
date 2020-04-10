//
//  PickupViewController.swift
//  Moveit
//
//  Created by WuSongBai on 2020/3/9.
//  Copyright © 2020 WuSongBai. All rights reserved.
//

import UIKit
import iOSDropDown

class PickupViewController: UIViewController {

    @IBOutlet weak var floorDropDown: DropDown!
    @IBOutlet weak var liftDropDown: DropDown!
    @IBOutlet weak var floorView: UIView!
    @IBOutlet weak var optionView: UIView!
    @IBOutlet weak var outsideSwitch: UISwitch!
    @IBOutlet weak var insideSwitch: UISwitch!
    @IBOutlet weak var insideassemblingSwitch: UISwitch!
    @IBOutlet weak var topOptionViewConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        floorDropDown.optionArray = ["G", "1", "2"]
        floorDropDown.didSelect { (String, index, id) in
            
        }
        
        liftDropDown.optionArray = ["Yes", "No"]
        liftDropDown.didSelect { (String, index, id) in
            
        }
        
        let strType = UserDefaults.standard.string(forKey: "Type")
        if strType == "StoreDelivery" {
            floorView.isHidden = true
            optionView.isHidden = false
            
            topOptionViewConstraint.constant = 30
        } else {
            floorView.isHidden = false
            optionView.isHidden = false
            
            topOptionViewConstraint.constant = 120
        }
        self.view.layoutIfNeeded()
        
        // Down Keyboard...
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        
        view.endEditing(true)
    }
    
    @IBAction func onClickNextScreen(_ sender: UIButton) {
        self.performSegue(withIdentifier: "PickToDropVC", sender: nil)
    }
    
    @IBAction func onClickProfileButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "PickToProfileVC", sender: nil)
    }
    
    @IBAction func onClickBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func onClickOutsideSwitch(_ sender: UISwitch) {
        
        outsideSwitch.setOn(true, animated: true)
        insideSwitch.setOn(false, animated: true)
        insideassemblingSwitch.setOn(false, animated: true)
    }
    
    @IBAction func onClickInsideSwitch(_ sender: UISwitch) {
        
        outsideSwitch.setOn(false, animated: true)
        insideSwitch.setOn(true, animated: true)
        insideassemblingSwitch.setOn(false, animated: true)
    }
    
    @IBAction func onClickInsideAssemblingSwitch(_ sender: UISwitch) {
        
        outsideSwitch.setOn(false, animated: true)
        insideSwitch.setOn(false, animated: true)
        insideassemblingSwitch.setOn(true, animated: true)
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
