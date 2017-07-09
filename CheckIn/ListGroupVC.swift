//
//  ListGroupVC.swift
//  checkinApp
//
//  Created by VietMT on 7/1/17.
//  Copyright © 2017 CheckinApp. All rights reserved.
//

import UIKit

class ListGroupVC: BaseViewController ,UITableViewDelegate,UITableViewDataSource{
    
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.tableView.dataSource = self
        
        self.tableView.delegate = self
        
        self.tableView.backgroundColor = UIColor.gray
        self.tableView.separatorStyle = .none
        self.tableView.backgroundColor = UIColor.clear
        
        setNavigationBar(title: "", leftImage: "facebook", rightImage: "facebook", selectorleft: #selector(ListGroupVC.printName), selectorRight: #selector(ListGroupVC.printName))
        
        enableFloatingButton(method: #selector(ListGroupVC.printName), image: "facebook", width: 60, heigh: 60, x: UIScreen.main.bounds.size.width - 100, y: UIScreen.main.bounds.size.height - 100, backgroundcolor: UIColor.orange)
        
        self.tableView.register(UINib.init(nibName: "ListGroupCelTableViewCell", bundle: nil), forCellReuseIdentifier: "ListGroupCelTableViewCell")
        
    }
    
    
    func printName(){
        print("name is Left")
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListGroupCelTableViewCell", for: indexPath) as! ListGroupCelTableViewCell
        cell.imageGroup.image = UIImage(named: "facebook")
        cell.lblName.text = "Phòng hành chính"
        cell.lblNameGroup.text = "Thành viên:"
        cell.lblNumMember.text = "10"
        cell.btnDelete.setImage(UIImage(named : "facebook"), for: .normal)
        cell.myView.backgroundColor = UIColor.white
        cell.myView.layer.cornerRadius = 10
        cell.backgroundColor = UIColor.clear

        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    }
