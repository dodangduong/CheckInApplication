//
//  HistoryGroup.swift
//  CheckIn
//
//  Created by Gandalf on 7/9/17.
//  Copyright © 2017 CheckIn. All rights reserved.
//

import UIKit

class HistoryGroup: BaseViewController,UICollectionViewDelegate,UICollectionViewDataSource,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var collectionview: UICollectionView!
    
    @IBOutlet weak var tableview: UITableView!
    var arr : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for item in 1...31 {
            arr.append(String(item))
            print(item)
        }
        self.tableview.delegate = self
        self.tableview.dataSource = self
        self.collectionview.dataSource = self
        self.collectionview.delegate = self
        self.tableview.register(UINib.init(nibName: "HistoryTableCell", bundle: nil), forCellReuseIdentifier: "HistoryTableCell")
        
        setNavigationBar(title: "", leftImage: "previous", rightImage: "filter", selectorleft: Selector(""), selectorRight: Selector(""))
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! DaysViewCell
        cell.btnDays.setTitle(arr[indexPath.row], for: .normal)
        return cell

    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! DaysViewCell
        cell.btnDays.setTitleColor(UIColor.orange, for: .selected)
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
