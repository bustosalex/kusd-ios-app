//
//  CalendarCell.swift
//  kusd
//
//  Created by App Factory on 10/2/16.
//  Copyright © 2016 uwp. All rights reserved.
//

import UIKit

class EventCell: UITableViewCell {

    @IBOutlet weak var headline: UILabel!
    @IBOutlet weak var subtext: UILabel!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
