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
    
    var staffClick = false
    var managerClick = false
    
    @IBAction func btnNext(_ sender: Any) {
        if staffClick {
            
            let profile = self.storyboard?.instantiateViewController(withIdentifier: "ProfileInformationVC") as! ProfileInformationVC
            present(profile, animated: true, completion: nil)
        } else {
            
            let listGr = self.storyboard?.instantiateViewController(withIdentifier: "ListGroupVC") as! ListGroupVC
            present(listGr, animated: true, completion: nil)
            }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setCircleImage(profileImage: managerImage)
        setCircleImage(profileImage: staffImage)
    
        setCornerButton(button: btnNext, values: 30)
        setBoderButton(button: btnNext, collor: UIColor.white, width: 2)
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(staff_Click))
        staffImage.addGestureRecognizer(tapGestureRecognizer)
        staffImage.isUserInteractionEnabled = true
        
        let tapGestureRecognizer_ma = UITapGestureRecognizer(target: self, action: #selector(manager_Click))
        managerImage.addGestureRecognizer(tapGestureRecognizer_ma)
        managerImage.isUserInteractionEnabled = true
        

        
        // Do any additional setup after loading the view.
    }
    
    func staff_Click() {
        staffClick = true
        managerClick = false
        print(staffClick)
    }
    
    func manager_Click() {
        staffClick = false
        managerClick = true
        print(managerClick)
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
