//
//  TableViewController.swift
//  kusd
//
//  Created by Alex on 10/1/16.
//  Copyright © 2016 uwp. All rights reserved.
//

import UIKit

class NewsTableViewController: UITableViewController, XMLParserDelegate {
    
    let fuck = Story(stories: ["Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sit amet odio ut lorem iaculis porttitor ut id nisl. Aenean accumsan, mi at sagittis ullamcorper, lorem lectus lacinia tellus, molestie porttitor ex lectus vitae augue. Maecenas sed ex ante. Curabitur lobortis mi arcu, eu aliquet odio aliquet vitae. In mauris lacus, vehicula a scelerisque quis, condimentum eget enim. Fusce ac nisl lorem. Pellentesque volutpat interdum odio, vitae pretium risus vulputate eget. Nam ultrices leo nec justo molestie, vel tempus mauris congue. Curabitur eget purus pharetra, condimentum magna a, suscipit ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sit amet odio ut lorem iaculis porttitor ut id nisl. Aenean accumsan, mi at sagittis ullamcorper, lorem lectus lacinia tellus, molestie porttitor ex lectus vitae augue. Maecenas sed ex ante. Curabitur lobortis mi arcu, eu aliquet odio aliquet vitae. In mauris lacus, vehicula a scelerisque quis, condimentum eget enim. Fusce ac nisl lorem. Pellentesque volutpat interdum odio, vitae pretium risus vulputate eget. Nam ultrices leo nec justo molestie, vel tempus mauris congue. Curabitur eget purus pharetra, condimentum magna a, suscipit ante."])
    

    var theNews: News!
    
    let id = "Cell"
    var xmlParser: XMLParser!
    var newsItems = [News]()
    override func viewDidLoad() {
        super.viewDidLoad()
        //refreshNews()
        theNews = News(title: "Headline", date: "10-9-16", story: fuck)
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func refreshNews(){
//        if let url = URL(string: "http://www.kusd.edu/xml-news"){
//            
//            xmlParser = XMLParser(contentsOf: url)
//            xmlParser.delegate = self
//            xmlParser.parse()
//            
//            
//            
//        }
//    
//    }
//    
//    
//    /** 
//    
//     Mark: - XMLParser Delegate Methods
//     
//    **/
//    
//    var newsTitle: String!
//    var newsDate: String!
//    var story: [String]?
//    var paragraph: String!
//
//    var currentParsedElement = String()
//    var weAreInsideANode =  false
//    var weAreInsideAStory = false
//    
//    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
//        
//       
//        
//        if elementName == "node"{
//            weAreInsideANode = true
//        }
//        else if elementName == "story" {
//            weAreInsideAStory = true
//        }
//        
//        if weAreInsideANode {
//            switch elementName {
//            case "title":
//                newsTitle = String()
//                currentParsedElement = "title"
//            case "date":
//                newsDate = String()
//                currentParsedElement = "date"
//            case "story":
//                story = []
//            default:
//                break
//            }
//        }
//        else if weAreInsideAStory {
//            paragraph = String()
//        }
//
//        
//    }
//    
//    func parser(_ parser: XMLParser, foundCharacters string: String) {
//        if weAreInsideANode {
//            switch currentParsedElement {
//            case "title":
//                newsTitle = newsTitle + string
//            case "date":
//                newsDate = newsDate + string
//            default:
//                break
//            }
//        }
//        
//        if weAreInsideAStory{
//            switch currentParsedElement {
//            case "p":
//                paragraph = paragraph + string
//                story?.append(paragraph)
//            default:
//                break
//            }
//        }
//    }
//    
//    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
//        
//        if weAreInsideANode {
//            switch elementName {
//            case "title":
//                currentParsedElement = ""
//            case "date":
//                currentParsedElement = ""
//            case "story":
//                currentParsedElement = ""
//            default:
//                break
//            }
//        }
//        
//        if elementName == "node" {
//            var newsItem = News()
//            newsItem.title = newsTitle
//            print(newsTitle)
//            newsItem.date = newsDate
//            print(newsDate)
//            
//            newsItems.append(newsItem)
//            weAreInsideANode = false
//            weAreInsideAStory = false
//        }
//        
//    }
//    
//    func parserDidEndDocument(_ parser: XMLParser) {
//        self.tableView.reloadData()
//    }

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
        
        cell.headline.text = theNews.title
        cell.content.text = theNews.story!.stories[0]
        cell.date.text = theNews.date
        
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
        
        performSegue(withIdentifier: "showNewsContent", sender: theNews)
    }
    
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  segue.identifier == "showNewsContent"{
            let destination = segue.destination as? NewsPageViewController
            destination?.new = sender as! News
            
        }
    }
 

}
