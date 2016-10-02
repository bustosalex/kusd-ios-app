//
//  NewsTableViewCell.swift
//  kusd
//
//  Created by Alex on 10/1/16.
//  Copyright © 2016 uwp. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var content: UILabel!
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var publishDate: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        cardView.layer.masksToBounds = false
        cardView.layer.cornerRadius = 1
        cardView.layer.shadowRadius = 1
        cardView.layer.shadowOffset = CGSize(width: -0.2, height: -0.2)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
