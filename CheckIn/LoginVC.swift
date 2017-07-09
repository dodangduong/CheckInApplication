//
//  LoginVC.swift
//  checkinApp
//
//  Created by VietMT on 7/1/17.
//  Copyright © 2017 CheckinApp. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit

class LoginVC: BaseViewController {
    
    @IBOutlet weak var profileImage: UIImageView!
    
    
    @IBAction func btnLoginFace(_ sender: Any) {
//        let listGVC = storyboard?.instantiateViewController(withIdentifier: "ListGroupVC") as! ListGroupVC
//        
//        present(listGVC, animated: true, completion: nil)
        getFacebookUserInfo()
    }
    
    
    @IBAction func btnLoginLater(_ sender: Any) {
    }
    
    @IBOutlet weak var btnLoginFace: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setCircleImage(profileImage: profileImage)
        setCornerButton(button: btnLoginFace, values: 30)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getFacebookUserInfo(){
        let loginManager : FBSDKLoginManager = FBSDKLoginManager()
        loginManager.logIn(withReadPermissions: ["email","user_about_me","user_birthday"], from: self, handler: { (result , error) in
            if (error == nil) {
                let params = ["fields" : "id, name, first_name, last_name, picture.type(large)"]
                let graphRequest = FBSDKGraphRequest.init(graphPath: "/me", parameters: params)
                let Connection = FBSDKGraphRequestConnection()
                Connection.add(graphRequest) { (Connection, result, error) in
                    let info = result as! [String : AnyObject]
                    print(info["name"] as! String)
                }
                Connection.start()
            }
        })
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
