//
//  ListOfImagesViewController.swift
//  LoadAndCacheImages
//
//  Created by Alexey Danilov on 27.01.2018.
//  Copyright © 2018 danilovdev. All rights reserved.
//

import UIKit

class ImageListViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    let cellId = "CellId"
    
    let imageUrls = ["https://cdn.pixabay.com/photo/2017/05/07/08/56/pancakes-2291908_960_720.jpg",
        "https://cdn.pixabay.com/photo/2016/11/13/19/26/melon-1821790_960_720.jpg",
        "https://cdn.pixabay.com/photo/2017/10/01/13/50/bread-2805578_960_720.jpg",
        "https://cdn.pixabay.com/photo/2016/01/04/07/06/northeast-lift-1120404_960_720.jpg",
        "https://cdn.pixabay.com/photo/2014/11/05/15/57/salmon-518032_960_720.jpg",
        "https://cdn.pixabay.com/photo/2014/11/03/23/33/food-516044_960_720.jpg",
        "https://cdn.pixabay.com/photo/2014/06/21/21/00/salad-374173_960_720.jpg",
        "https://cdn.pixabay.com/photo/2017/02/08/17/22/salad-2049563_960_720.jpg",
        "https://cdn.pixabay.com/photo/2017/01/11/11/33/cake-1971556_960_720.jpg",
        "https://cdn.pixabay.com/photo/2017/01/11/11/33/cake-1971552_960_720.jpg",
        "https://cdn.pixabay.com/photo/2017/01/16/17/45/pancake-1984716_960_720.jpg",
        "https://cdn.pixabay.com/photo/2015/07/26/21/39/deviled-eggs-861773_960_720.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = UITableViewAutomaticDimension
        tableView.separatorStyle = .none
        tableView.register(CustomCell.self, forCellReuseIdentifier: cellId)
    }
    
}

extension ImageListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageUrls.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! CustomCell
        let imageUrl = imageUrls[indexPath.row]
        cell.imageUrl = imageUrl
        return cell
    }
}
