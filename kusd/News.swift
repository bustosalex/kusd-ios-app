//
//  News.swift
//  kusd
//
//  Created by Alex on 10/3/16.
//  Copyright © 2016 uwp. All rights reserved.
//

import Foundation


struct News {
    
    let headline: String
    let content: String
    let date: String
    
    init(headline: String, content: String, date: String) {
        self.headline = headline
        self.content = content
        self.date = date
    }
    
}
