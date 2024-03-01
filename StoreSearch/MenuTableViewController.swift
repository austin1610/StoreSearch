//
//  MenuTableViewController.swift
//  StoreSearch
//
//  Created by Austin Sparks on 3/1/24.
//

import UIKit

protocol MenuViewControllerDelegate: class {
  func menuViewControllerSendEmail(_ controller: MenuViewController)
}

class MenuViewController: UITableViewController {
  weak var delegate: MenuViewControllerDelegate?

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  // MARK: - Table View Delegates
  override func tableView(
    _ tableView: UITableView,
    didSelectRowAt indexPath: IndexPath
  ) {
    tableView.deselectRow(at: indexPath, animated: true)
    if indexPath.row == 0 {
      delegate?.menuViewControllerSendEmail(self)
    }
  }
}

