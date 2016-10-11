//
//  PDFButtonViewController.swift
//  kusd
//
//  Created by App Factory on 10/9/16.
//  Copyright © 2016 uwp. All rights reserved.
//

import UIKit

class PDFButtonViewController: UIViewController {
    
    @IBOutlet weak var TYSCButton: UIButton!
    @IBOutlet weak var TYTCButton: UIButton!
    @IBOutlet weak var NYSCButton: UIButton!
    
    var pdfs = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        pdfs = ["2016-2017 SCHOOL CALENDAR","2016-2017 TEST CALENDAR","2017-2018 SCHOOL CALENDAR"]
        TYSCButton.setTitle(pdfs[0], for: UIControlState.normal)
        TYTCButton.setTitle(pdfs[1], for: UIControlState.normal)
        NYSCButton.setTitle(pdfs[2], for: UIControlState.normal)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! PDFViewController
        
        if segue.identifier == "TYSC" {
            destination.buttonName = "TYSC"
        }
        if segue.identifier == "TYTC" {
            destination.buttonName = "TYTC"
        }
        if segue.identifier == "NYSC" {
            destination.buttonName = "NYSC"
        }
        
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
