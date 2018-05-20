//
//  ViewController.swift
//  Part6
//
//  Created by Alexey Danilov on 22.02.2018.
//  Copyright © 2018 danilovdev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        if indexPath.section != 0 {
            return nil
        }
        
        let accept = UIContextualAction(style: .normal, title: "Accept") { (action, view, nil) in
            print("Accept")
        }
        accept.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        accept.image = #imageLiteral(resourceName: "ic_check_white_48pt")
        let waitlist = UIContextualAction(style: .normal, title: "Waitlist") { (action, view, nil) in
            print("Waitlist")
        }
        waitlist.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        waitlist.image = #imageLiteral(resourceName: "ic_access_time_white_48pt")
        let actions = [accept, waitlist]
        let configuration = UISwipeActionsConfiguration(actions: actions)
        configuration.performsFirstActionWithFullSwipe = false
        return configuration
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        
        
        let delete = UIContextualAction(style: .destructive, title: "Delete") { (action, view, nil) in
            print("Delete")
        }
        delete.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        delete.image = #imageLiteral(resourceName: "ic_delete_white_48pt")
        let reject = UIContextualAction(style: .normal, title: "Reject") { (action, view, nil) in
            print("Reject")
        }
        reject.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        reject.image = #imageLiteral(resourceName: "ic_block_white_48pt")
        if indexPath.section == 0 {
            let actions = [delete, reject]
            let configuration = UISwipeActionsConfiguration(actions: actions)
            configuration.performsFirstActionWithFullSwipe = false
            return configuration
        }
        
        let actions = [delete, reject]
        let configuration = UISwipeActionsConfiguration(actions: actions)
        configuration.performsFirstActionWithFullSwipe = false
        return configuration
    }
    
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}

