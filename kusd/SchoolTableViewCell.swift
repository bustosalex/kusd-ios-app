//
//  TableViewCell.swift
//  kusd
//
//  Created by Matthew McPherson on 10/7/16.
//  Copyright © 2016 uwp. All rights reserved.
//

import UIKit

class SchoolTableViewCell: UITableViewCell {
    @IBOutlet weak var schooName: UILabel!
    @IBOutlet weak var schoolAddress: UILabel!
    @IBOutlet weak var townAndZip: UILabel!
    @IBOutlet weak var phoneNumber: UILabel!
    @IBOutlet weak var schoolImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
