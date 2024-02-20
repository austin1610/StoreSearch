//
//  ViewController.swift
//  StoreSearch
//
//  Created by Austin Sparks on 2/19/24.
//

import UIKit

class SearchViewController: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Search Bar Delegate
    extension SearchViewController: UISearchBarDelegate {
        func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
            print("The search text is: '\(searchBar.text!)'")
        }
    }
}

