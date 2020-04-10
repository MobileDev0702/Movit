//
//  DropOffViewController.swift
//  Moveit
//
//  Created by WuSongBai on 2020/3/10.
//  Copyright © 2020 WuSongBai. All rights reserved.
//

import UIKit
import iOSDropDown

class DropOffViewController: UIViewController {

    @IBOutlet weak var floorDropDown: DropDown!
    @IBOutlet weak var liftDropDown: DropDown!
    @IBOutlet weak var floorView: UIView!
    @IBOutlet weak var selectMethodView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let strType = UserDefaults.standard.string(forKey: "Type")
        if strType == "StoreDelivery" {
            floorView.isHidden = false
        } else {
            floorView.isHidden = false
        }
        
        // Down Keyboard...
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        
        view.endEditing(true)
    }
    
    @IBAction func onClickNextScreenButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "DropToObjectVC", sender: nil)
    }
    
    @IBAction func onClickProfileButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "DropToProfileVC", sender: nil)
    }
    
    @IBAction func onClickBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
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
