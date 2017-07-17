//
//  SearchViewController.swift
//  StoreSearch
//
//  Created by Khalid Alrashed on 7/17/17.
//  Copyright © 2017 Khalid Alrashed. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.contentInset = UIEdgeInsets(top: 64, left: 0, bottom: 0, right: 0)
    }
    
    
}

