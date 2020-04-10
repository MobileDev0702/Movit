//
//  GetFreeGuoteViewController.swift
//  Moveit
//
//  Created by WuSongBai on 2020/3/10.
//  Copyright © 2020 WuSongBai. All rights reserved.
//

import UIKit

class GetFreeGuoteViewController: UIViewController {

    @IBOutlet weak var detailsTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initUI()
    }
    
    func initUI() {
        let borderColor: UIColor = UIColor(red: 0.8, green: 0.78, blue: 0.78, alpha: 1.0)
        detailsTextView.layer.borderColor = borderColor.cgColor
        detailsTextView.layer.borderWidth = 2
        
        // Down Keyboard...
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        
        view.endEditing(true)
    }
    
    @IBAction func onClickBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func onClickFreeQuote(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "Quote", message: "Your quotation has been sent. We will contact you shortly!", preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alertController.addAction(defaultAction)
        
        self.present(alertController, animated: true, completion: nil)
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
