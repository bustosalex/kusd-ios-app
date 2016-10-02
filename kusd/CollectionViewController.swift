//
//  CollectionViewController.swift
//  kusd
//
//  Created by Alex on 9/27/16.
//  Copyright © 2016 uwp. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    let iconName = ["news", "calendar", "lunch", "school", "social", "feature", "text", "board", "infinite"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // DataSource for Collection View
    // ---------------------------
    private func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        cell.icon.image = UIImage(named: iconName[indexPath.row])
        
        return cell
    }
    // number of cells
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return iconName.count
    }
    

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.bounds.width - 10) / 3.1
        let height  = (collectionView.bounds.height - 10) / 3.1
        print("The width of this cell is \(width)", terminator: "")
        return CGSize(width: width, height: height)
    }
    
    // Delegate for Collection View
    // ---------------------------
    
    // Does something when that cell is clicked
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Selected item at: \(indexPath.row)")
        let selectedItem = iconName[indexPath.row]
        if selectedItem == "calendar"{
            performSegue(withIdentifier: "ShowCalendar", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowCalendar" {
            _ = segue.destination as! EventTableViewController
        }
    }
    
    

    
    

}
