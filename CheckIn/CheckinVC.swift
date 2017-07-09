//
//  CheckinVC.swift
//  checkinApp
//
//  Created by VietMT on 7/1/17.
//  Copyright © 2017 CheckinApp. All rights reserved.
//

import UIKit

class CheckinVC: BaseViewController {
    
    
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblPosition: UILabel!
    
    @IBOutlet weak var imageGroup: UIImageView!
    
    @IBOutlet weak var imagePhone: UIImageView!
    
    
    @IBOutlet weak var imageMail: UIImageView!
    
    @IBOutlet weak var lblGroup: UILabel!
    
    @IBOutlet weak var lblPhone: UILabel!
    
    @IBOutlet weak var lblMail: UILabel!
    
    @IBOutlet weak var btnCheckin: UIButton!
    
    @IBOutlet weak var btnCheckout: UIButton!

    @IBAction func btnCheckIn(_ sender: Any) {
    }
    
    
    @IBAction func btnCheckOut(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setCircleImage(profileImage: profileImage)
        setCornerButton(button: btnCheckin, values: 30)
        setCornerButton(button: btnCheckout, values: 30)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
