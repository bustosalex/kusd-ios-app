//
//  NewsPageViewController.swift
//  kusd
//
//  Created by Alex on 10/3/16.
//  Copyright © 2016 uwp. All rights reserved.
//

import UIKit

class NewsPageViewController: UIViewController {
    @IBOutlet weak var headline: UILabel!
    @IBOutlet weak var content: UITextView!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var card: UIView!

    var new: News!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // set everything
    override func viewWillAppear(_ animated: Bool) {
        headline.text = "asdf"
        content.text = "asdf"
        date.text = "asdf"
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
