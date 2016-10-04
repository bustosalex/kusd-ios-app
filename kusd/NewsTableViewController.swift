//
//  TableViewController.swift
//  kusd
//
//  Created by Alex on 10/1/16.
//  Copyright © 2016 uwp. All rights reserved.
//

import UIKit

class NewsTableViewController: UITableViewController {
    
    
    let news: News = News(headline: "Test", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sit amet odio ut lorem iaculis porttitor ut id nisl. Aenean accumsan, mi at sagittis ullamcorper, lorem lectus lacinia tellus, molestie porttitor ex lectus vitae augue. Maecenas sed ex ante. Curabitur lobortis mi arcu, eu aliquet odio aliquet vitae. In mauris lacus, vehicula a scelerisque quis, condimentum eget enim. Fusce ac nisl lorem. Pellentesque volutpat interdum odio, vitae pretium risus vulputate eget. Nam ultrices leo nec justo molestie, vel tempus mauris congue. Curabitur eget purus pharetra, condimentum magna a, suscipit ante.", date: "10/3/16")
    
    let id = "Cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: id, for: indexPath) as! NewsTableViewCell
        
        cell.headline.text = news.headline
        cell.content.text = news.content
        cell.date.text = news.date
        
        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let row = indexPath.row
        print("Selected item at \(row)")
        
        //performSegue(withIdentifier: "showNewsContent", sender: self)
    }
    
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  segue.identifier == "showNewsContent"{
            _ = segue.destination as? NewsPageViewController
        }
    }
 

}
