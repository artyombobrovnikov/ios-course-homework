//
//  DiaryNoteCell.swift
//  02 home work 2016
//
//  Created by Admin on 11.04.16.
//  Copyright © 2016 Bobrovnikov. All rights reserved.
//

import UIKit

class DiaryNoteCell: UITableViewCell {
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var timeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}

