//
//  ViewController.swift
//  CaterMe
//
//  Created by Apple on 5/17/17.
//  Copyright © 2017 CaterMe. All rights reserved.
//

import UIKit

class PostViewController: UITableViewController {
    
    var postItems = [PostItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let item1 = PostItem(image: UIImage(named: "PostSouthernFood")!, text: "example")
        let item2 = PostItem(image: UIImage(named: "PostVegetarianFood")!, text: "example2")
    
        postItems.append(item1)
        postItems.append(item2)
        
//        tableView.rowHeight = 250
        tableView.estimatedRowHeight = 250

    }
    
    

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "postCell") as! PostCell
        
        let currentPost = postItems[indexPath.row]
        
        cell.postImage.image = currentPost.image
        cell.postTextLabel.text = currentPost.text
        
        return cell
    }
    
}


