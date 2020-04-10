//
//  DeliveryMethodViewController.swift
//  Moveit
//
//  Created by WuSongBai on 2020/3/12.
//  Copyright © 2020 WuSongBai. All rights reserved.
//

import UIKit

class DeliveryMethodViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onClickStoreDeliveryButton(_ sender: UIButton) {
        UserDefaults.standard.set("StoreDelivery", forKey: "Type")
        self.performSegue(withIdentifier: "DeliveryToPickupVC", sender: nil)
    }
    
    @IBAction func onClickOthersButton(_ sender: UIButton) {
        UserDefaults.standard.set("Others", forKey: "Type")
        self.performSegue(withIdentifier: "DeliveryToPickupVC", sender: nil)
    }
    
    @IBAction func onClickProfileButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "DeliveryToProfileVC", sender: nil)
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
