//
//  PDFViewController.swift
//  kusd
//
//  Created by App Factory on 10/8/16.
//  Copyright © 2016 uwp. All rights reserved.
//

import UIKit

class PDFViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    var buttonName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if buttonName == "TYSC" {
            let myURL = URL(string: "http://www.kusd.edu/sites/default/files/calendar-16-17.pdf")
            let myURLRequest = URLRequest(url: myURL!)
            webView.loadRequest(myURLRequest)
        }
        else if buttonName == "TYTC" {
            let myURL = URL(string: "http://www.kusd.edu/sites/default/files/test-calendar_0.pdf")
            let myURLRequest = URLRequest(url: myURL!)
            webView.loadRequest(myURLRequest)
        }
        else if buttonName == "NYSC"{
            let myURL = URL(string: "http://www.kusd.edu/sites/default/files/calendar-17-18.pdf")
            let myURLRequest = URLRequest(url: myURL!)
            webView.loadRequest(myURLRequest)
        }
        // Do any additional setup after loading the view.
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
