//
//  ViewController.swift
//  collectionView
//
//  Created by Rebecca Bartels on 10/3/16.
//  Copyright © 2016 Rebecca Bartels. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController {
    
    
    var ButtonArray = [String]()
    var Array = [String]()
    var ImageArray = [UIImage]()
    //var xkcd = require('xkcd-api');
    
    
    
    @IBOutlet var collectionViewVar: UICollectionView!
    
    
    @IBOutlet weak var collectionViewCellVar: UICollectionViewCell!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // why is Array and ButtonArray both necessary and I need to put in my images
        Array = ["Click me", "Click me", "Click me", "Click me"]
        ButtonArray = ["Click me", "Click me", "Click me", "Click me"]
        xkcdAPI()
        
        
        ImageArray.count
        print(ImageArray)
    }
    
    func xkcdAPI() {
        let urlString = URL(string: "https://xkcd.com/614/info.0.json")
        if let url = urlString {
            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error)
                } else {
                    if let usableData = data {
                        
                        print(data) //JSONSerialization
                        
                       
                    }
                }
            }
            task.resume()
    }
        
}
    
   /* func getLatestComic() {
        xkcd.latest(function(error, response) {
            if (error) {
                console.error(error);
            } else {
                console.log(reponse);
            }
        })
    }*/
    
    func constraintsForCells() {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //first box goes here
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Array.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        //        let Label = cell.viewWithTag(1) as! UILabel
        //        Label.text = Array[indexPath.row]
        
        let Button = cell.viewWithTag(2) as! UIButton
        Button.setTitle(ButtonArray[indexPath.row], for: UIControlState.normal)
        
//        let animage = cell.viewWithTag(3) as! UIImage
        //worked here
        
        
        
        return cell
    }
    
    
    
}
