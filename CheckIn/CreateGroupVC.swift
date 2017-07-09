//
//  CreateGroupVC.swift
//  CheckIn
//
//  Created by VietMT on 7/2/17.
//  Copyright © 2017 CheckIn. All rights reserved.
//

import UIKit
import MapKit

class CreateGroupVC: BaseViewController {
    
    @IBOutlet weak var imageGr: UIImageView!
    
    @IBOutlet weak var view_name_Gr: UIView!
    
    @IBOutlet weak var lbl_name_Gr: UILabel!

    @IBOutlet weak var view_checkin: UIView!
    
    @IBOutlet weak var lbl_checkIn: UILabel!
    
    @IBOutlet weak var btn_checkIn: UIButton!
    
    @IBOutlet weak var view_checkOut: UIView!
    
    @IBOutlet weak var lbl_checkOut: UILabel!
    
    @IBOutlet weak var btn_checkOut: UIButton!
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var btn_Monday: UIButton!
    @IBOutlet weak var btn_tueday: UIButton!
    @IBOutlet weak var btn_weday: UIButton!
    @IBOutlet weak var btn_thuday: UIButton!
    @IBOutlet weak var btn_firday: UIButton!
    @IBOutlet weak var btn_satday: UIButton!
    @IBOutlet weak var btnsunday: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        enableFloatingButtonNormal(method: Selector(""), image: "", width: 310, heigh: 40, x: UIScreen.main.bounds.width/2 - 155, y: UIScreen.main.bounds.height - 80, backgroundcolor: UIColor.orange, title: "THÊM THÀNH VIÊN", corner: 20)
        
            setNavigationBarTitle(title: "", leftTitle: "", rightTitle: "Huỷ", selectorleft: Selector(""), selectorRight: Selector(""))
        setCircleImage(profileImage: imageGr)
        setCornerView(button: view_checkin,view_checkOut,view_name_Gr, values: 20)
        setCornerButtonMul(button: btn_Monday,btn_tueday,btn_weday,btn_thuday,btn_firday, values: 10)
        setCornerButtonBorder(button: btnsunday, values: 10, color: UIColor.darkGray, border_w: 2)
        setCornerButtonBorder(button: btn_satday, values: 10, color: UIColor.darkGray, border_w: 2)
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
