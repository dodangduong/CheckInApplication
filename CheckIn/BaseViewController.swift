//
//  BaseViewController.swift
//  checkinApp
//
//  Created by VietMT on 7/1/17.
//  Copyright © 2017 CheckinApp. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setCircleImage(profileImage : UIImageView) {
        profileImage.layer.borderWidth = 1
        profileImage.layer.masksToBounds = false
        profileImage.layer.borderColor = UIColor.white.cgColor
        profileImage.layer.cornerRadius = profileImage.frame.width/2
        profileImage.clipsToBounds = true
    }
    
    func setCornerButtonBorder(button : UIButton, values : CGFloat, color : UIColor, border_w : CGFloat ) {
         button.layer.cornerRadius = values
        button.layer.borderColor = color.cgColor
        button.layer.borderWidth = border_w
    }
    
    func setCornerButton(button : UIButton,values : CGFloat) {
        button.layer.cornerRadius = values
    }
    
    func setCornerButtonMul(button : UIButton..., values : CGFloat) {
        for item in button {
            item.layer.cornerRadius = values
        }
    }
    
    func setCornerView(button : UIView..., values : CGFloat) {
        for item in button {
            item.layer.cornerRadius = values
        }
    }
    
    func setBoderButton(button : UIButton,collor : UIColor,width : CGFloat) {
        button.layer.borderColor = collor.cgColor
        button.layer.borderWidth = width
    }
    
    func setCornerTextfied(textFied: UITextField..., corner : CGFloat, widthBorder : CGFloat, borderColor : UIColor) {
        for values in textFied {
            values.layer.cornerRadius = corner
            values.layer.borderWidth = widthBorder
            values.layer.borderColor = borderColor.cgColor
            
            }
    }
    
    
    func setNavigationBar(title : String, leftImage : String,rightImage : String, selectorleft : Selector,selectorRight : Selector) -> UINavigationItem{
        let height: CGFloat = 70
        let navbar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: height))
        navbar.backgroundColor = UIColor.red
        let navItem = UINavigationItem()
        navItem.title = title
        navItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: leftImage), style: .plain, target: self, action: selectorleft)
        navItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: rightImage), style: .plain, target: self, action: selectorRight)
        
        navbar.items = [navItem]
        
        
        view.addSubview(navbar)
        return navItem
        
    }
    
    func setNavigationBarTitle(title : String, leftTitle : String,rightTitle : String, selectorleft : Selector,selectorRight : Selector) -> UINavigationItem{
        let height: CGFloat = 70
        let navbar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: height))
        navbar.backgroundColor = UIColor.blue
        let navItem = UINavigationItem()
        navItem.title = title
        navItem.leftBarButtonItem = UIBarButtonItem(title: leftTitle, style: .plain, target: self, action: selectorleft)
        navItem.rightBarButtonItem = UIBarButtonItem(title: rightTitle, style: .plain, target: self, action: selectorRight)
        
        navbar.items = [navItem]
        
        view.addSubview(navbar)
        return navItem
        
    }

    
    
    
    func enableFloatingButton(method : Selector, image : String, width : CGFloat, heigh : CGFloat, x : CGFloat, y : CGFloat, backgroundcolor : UIColor) {
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: method)
        let button = UIImageView(frame: CGRect(x: x, y: y, width: width, height: heigh))
        button.image = UIImage(named: image)
        button.addGestureRecognizer(tapGestureRecognizer)
        button.backgroundColor = backgroundcolor
        button.layer.cornerRadius = button.frame.size.width/2
        button.isUserInteractionEnabled = true
        view.addSubview(button)
        }
    
    func enableFloatingButtonNormal(method : Selector, image : String, width : CGFloat, heigh : CGFloat, x : CGFloat, y : CGFloat, backgroundcolor : UIColor, title : String,corner : CGFloat) {
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: method)
        let button = UIButton(frame: CGRect(x: x, y: y, width: width, height: heigh))
        button.setImage(UIImage(named: image), for: .normal)
        button.backgroundColor = backgroundcolor
        button.addTarget(self, action: method, for: .touchUpInside)
        button.setTitle(title, for: .normal)
        button.layer.cornerRadius = corner
        view.addSubview(button)
    }

    
    
    
    func presentationController(controller: UIPresentationController, viewControllerForAdaptivePresentationStyle style: UIModalPresentationStyle) -> UIViewController? {
        let presentedViewController = controller.presentedViewController
        let navigationController = UINavigationController(rootViewController: presentedViewController)
        let dismissButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: self, action: "dismissPopover:")
        
        presentedViewController.navigationItem.rightBarButtonItem = dismissButton
        
        return navigationController
    }
    
    func dismissPopover(sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
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
