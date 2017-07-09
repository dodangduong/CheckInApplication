//
//  SplashVC.swift
//  CheckIn
//
//  Created by VietMT on 7/2/17.
//  Copyright © 2017 CheckIn. All rights reserved.
//

import UIKit

class SplashVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        perform(#selector(SplashVC.gotoHome), with: nil, afterDelay: 3)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func gotoHome() {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
        present(loginVC, animated: true, completion: nil)
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
