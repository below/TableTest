//
//  TableViewCell_A.swift
//  TableTest
//
//  Created by Alexander v. Below on 07.10.20.
//  Copyright © 2020 Alexander von Below. All rights reserved.
//

import UIKit

class TableViewCell_A: UITableViewCell {

    @IBOutlet var textField: UITextField!

    override var canBecomeFirstResponder: Bool {
        return true
    }

    override func becomeFirstResponder() -> Bool {
        return self.textField.becomeFirstResponder()
    }
}
