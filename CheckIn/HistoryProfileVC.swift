//
//  HistoryProfileVC.swift
//  CheckIn
//
//  Created by Gandalf on 7/9/17.
//  Copyright © 2017 CheckIn. All rights reserved.
//

import UIKit

class HistoryProfileVC: BaseViewController, UICollectionViewDelegate, UICollectionViewDataSource,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var imageView: UIImageView!
    var arr : [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        for item in 1...31 {
            arr.append(String(item))
            print(item)
        }
        imageView.image = #imageLiteral(resourceName: "profile")
        setCircleImage(profileImage: imageView)
        setNavigationBar(title: "", leftImage: "facebook", rightImage: "facebook", selectorleft: Selector(""), selectorRight: Selector(""))
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UINib.init(nibName: "HistoryTableCell", bundle: nil), forCellReuseIdentifier: "HistoryTableCell")
//        collectionView.register((DaysViewCell.self), forCellWithReuseIdentifier: "Cell")
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! DaysViewCell
        cell.btnDays.setTitle(arr[indexPath.row], for: .normal)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HistoryTableCell", for: indexPath) as! HistoryTableCell
        
        if (indexPath.row == 0) {
            cell.lblDay.text  = "Ngày"
            cell.lblCheckIn.text = "Check In"
            cell.lblCheckIn.textColor = UIColor.blue
            cell.lblCheckOut.text = "Check Out"
            cell.lblCheckOut.textColor = UIColor.orange
            cell.isUserInteractionEnabled = false
            } else {
            cell.isUserInteractionEnabled = true
                cell.lblDay.text = "21/10/1992"
                cell.lblCheckOut.text = "09:30"
                cell.lblCheckIn.text = "18:20"
            cell.lblCheckOut.textColor = UIColor.black
            cell.lblCheckIn.textColor = UIColor.black
            cell.lblDay.textColor = UIColor.black
            
            }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
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
