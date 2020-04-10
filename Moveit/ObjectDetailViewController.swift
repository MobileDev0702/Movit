//
//  ObjectDetailViewController.swift
//  Moveit
//
//  Created by WuSongBai on 2020/3/10.
//  Copyright © 2020 WuSongBai. All rights reserved.
//

import UIKit

class ObjectDetailViewController: UIViewController {

    @IBOutlet weak var objSearchTxtField: UITextField!
    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var furnitureLabel: UILabel!
    @IBOutlet weak var furnitureView: UIView!
    @IBOutlet weak var othersPriceBtn: UIButton!
    @IBOutlet weak var getpriceBtnLabel: UILabel!
    @IBOutlet weak var storePriceBtn: UIButton!
    @IBOutlet weak var objectTopConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initUI()
    }
    
    func initUI() {
        
        furnitureView.layer.cornerRadius = 5
        furnitureView.clipsToBounds = true
        
        searchView.layer.cornerRadius = 5
        searchView.clipsToBounds = true
        
        let strType = UserDefaults.standard.string(forKey: "Type")
        if strType == "StoreDelivery" {
            furnitureLabel.isHidden = false
            furnitureView.isHidden = false
            
            othersPriceBtn.isHidden = true
            storePriceBtn.isHidden = false
            getpriceBtnLabel.isHidden = false
            
            objectTopConstraint.constant = 131
        } else {
            furnitureLabel.isHidden = true
            furnitureView.isHidden = true
            
            othersPriceBtn.isHidden = false
            storePriceBtn.isHidden = true
            getpriceBtnLabel.isHidden = true
            
            objectTopConstraint.constant = 44
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
    
    @IBAction func onClickGetEstimatePriceButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "ObjectToOrderVC", sender: nil)
    }
    
    @IBAction func onClickOthersButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "ObjectToOrderVC", sender: nil)
    }
    
    @IBAction func onClickProfileButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "ObjectToProfileVC", sender: nil)
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
