//
//  ProfileInformationVC.swift
//  checkinApp
//
//  Created by VietMT on 7/1/17.
//  Copyright © 2017 CheckinApp. All rights reserved.
//

import UIKit

class ProfileInformationVC: BaseViewController {
    
    @IBOutlet weak var imageProfile: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblGroup: UILabel!
    @IBOutlet weak var edtName: UITextField!
    @IBOutlet weak var edtGroup: UITextField!
    @IBOutlet weak var edtPosition: UITextField!
    @IBOutlet weak var edtPhone: UITextField!
    @IBOutlet weak var edtMail: UITextField!
    @IBOutlet weak var btnFinish: UIButton!
    @IBAction func btnFinish(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCircleImage(profileImage: imageProfile)
        setCornerButton(button: btnFinish, values: 20)
        setCornerTextfied(textFied: edtMail,edtPosition,edtPhone,edtGroup,edtName, corner: 25, widthBorder: 1, borderColor: UIColor.gray)
        
        
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
