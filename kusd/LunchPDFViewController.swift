//
//  LunchPDFViewController.swift
//  kusd
//
//  Created by cassandra casillas on 10/6/16.
//  Copyright © 2016 uwp. All rights reserved.
//
import UIKit

class LunchPDFViewController: UIViewController,UIWebViewDelegate{
    

    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        webView.delegate = self
        if let url = URL(string: "http://www.kusd.edu/sites/default/files/document-library/english/breakfast.pdf") {
            let request = URLRequest(url: url)
            webView.loadRequest(request)
        }
        
        
    }
}
