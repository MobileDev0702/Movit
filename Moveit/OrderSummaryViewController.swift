//
//  OrderSummaryViewController.swift
//  Moveit
//
//  Created by WuSongBai on 2020/3/10.
//  Copyright © 2020 WuSongBai. All rights reserved.
//

import UIKit

class OrderSummaryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
        

    @IBOutlet weak var itemTableView: UITableView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var priceText: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let strType = UserDefaults.standard.string(forKey: "Type")
        if strType == "StoreDelivery" {
            priceLabel.isHidden = false
            priceText.isHidden = false
            distanceLabel.isHidden = false
        } else {
            priceLabel.isHidden = true
            priceText.isHidden = true
            distanceLabel.isHidden = true
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.itemTableView.dequeueReusableCell(withIdentifier: "ItemsCell", for: indexPath) as! ItemsTableViewCell
        cell.itemName.text = "Chair"
        cell.itemCount.text = "6"
        return cell
    }
    
    @IBAction func onClickGetFreeQuoteButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "OrderToGetVC", sender: nil)
    }
    
    @IBAction func onClickProfileButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "OrderToProfileVC", sender: nil)
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
