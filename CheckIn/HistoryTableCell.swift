//
//  HistoryTableCell.swift
//  CheckIn
//
//  Created by Gandalf on 7/9/17.
//  Copyright © 2017 CheckIn. All rights reserved.
//

import UIKit

class HistoryTableCell: UITableViewCell {
    
    @IBOutlet weak var lblDay: UILabel!
    
    @IBOutlet weak var lblCheckIn: UILabel!

    @IBOutlet weak var lblCheckOut: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
