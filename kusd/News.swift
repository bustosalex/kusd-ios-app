//
//  News.swift
//  kusd
//
//  Created by Alex on 10/3/16.
//  Copyright © 2016 uwp. All rights reserved.
//

import Foundation


class News{
    
    var title = String()
    var date = String()
    var story: Story!
    
    init(title: String, date: String, story: Story){
        self.title = title
        self.date = date
        self.story = story
    }
    
}
