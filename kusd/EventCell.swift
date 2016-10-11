//
//  CalendarCell.swift
//  kusd
//
//  Created by App Factory on 10/2/16.
//  Copyright © 2016 uwp. All rights reserved.
//

import UIKit

class EventCell: UITableViewCell {

    @IBOutlet weak var card: UIView!
    @IBOutlet weak var headline: UILabel!
    @IBOutlet weak var subtext: UILabel!
    @IBOutlet weak var number: UILabel!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        card.layer.masksToBounds = false
        card.layer.cornerRadius = 1
        card.layer.shadowRadius = 1
        card.layer.shadowOffset = CGSize(width: -0.2, height: -0.2)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
