//
//  MainTableViewController.swift
//  TableViewApp
//
//  Created by Kai-Ta Hsieh on 2019/11/27.
//  Copyright © 2019 Charles Hsieh. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.rowHeight = 100
  }

  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath)
    if let label = cell.viewWithTag(101) as? UILabel {
      label.text = "This is section \(indexPath.section), row \(indexPath.row)"
    }
    return cell
  }

}

