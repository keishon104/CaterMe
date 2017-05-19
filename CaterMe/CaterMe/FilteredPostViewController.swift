//
//  FilteredPostViewController.swift
//  CaterMe
//
//  Created by Apple on 5/19/17.
//  Copyright © 2017 CaterMe. All rights reserved.
//

import UIKit

class FilteredPostViewController: UITableViewController {

    var postItems = [PostItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let item1 = PostItem(image: UIImage(named: "PostSouthernFood")!, text: "Durham Catering Company")
        let item2 = PostItem(image: UIImage(named: "PostVegetarianFood")!, text: "Piper's in the Popper")
        let item3 = PostItem(image: UIImage(named: "nantucketGrill")!, text: "Nantucket Grill")
        let item4 = PostItem(image: UIImage(named: "NoshFood")!, text: "Nosh")

        
        postItems.append(item1)
        postItems.append(item2)
        postItems.append(item3)
        postItems.append(item4)
    
        
        
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
