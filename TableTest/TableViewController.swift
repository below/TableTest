//
//  TableViewController.swift
//  TableTest
//
//  Created by Alexander v. Below on 07.10.20.
//  Copyright © 2020 Alexander von Below. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var sections: Int = 1
    var editableCell: UITableViewCell?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        sections = 1
        Timer.scheduledTimer(withTimeInterval: 3, repeats: false, block: { (_) in
            self.sections = 2
            debugPrint("Timer Fired")
            guard let cell = self.editableCell as? TableViewCell_A else {
                return
            }
            cell.canResign = true
            self.tableView.reloadData()
            cell.canResign = true
        })
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        debugPrint("\(sections) Sections")
        return sections
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        default:
            return 5
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var identifier = "TableViewCell_A"
        if indexPath.section > 0 {
            identifier = "TableViewCell_B"
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)

        if indexPath.section == 0 {
            self.editableCell = cell
            cell.becomeFirstResponder()
        }
        return cell
    }

}
