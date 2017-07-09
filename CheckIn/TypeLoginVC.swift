//
//  TypeLoginVC.swift
//  checkinApp
//
//  Created by VietMT on 7/1/17.
//  Copyright © 2017 CheckinApp. All rights reserved.
//

import UIKit

class TypeLoginVC: BaseViewController {
    
    
    @IBOutlet weak var managerImage: UIImageView!
    
    @IBOutlet weak var staffImage: UIImageView!
    
    @IBOutlet weak var btnNext: UIButton!
    
    @IBAction func btnNext(_ sender: Any) {
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setCircleImage(profileImage: managerImage)
        setCircleImage(profileImage: staffImage)
    
        setCornerButton(button: btnNext, values: 30)
        setBoderButton(button: btnNext, collor: UIColor.white, width: 2)
        
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
