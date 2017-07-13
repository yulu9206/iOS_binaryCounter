//
//  CustomCell.swift
//  binaryCounter
//
//  Created by Lu Yu on 7/12/17.
//  Copyright © 2017 Lu Yu. All rights reserved.
//

import UIKit

protocol CustomCellDelegate: class {
    func addNum(by controller: CustomCell, with num:Int)
    func minusNum(by controller: CustomCell, with num: Int)
    
}

class CustomCell: UITableViewCell {
    weak var delegate: CustomCellDelegate?
    @IBOutlet weak var middleLabel: UILabel!
    @IBAction func addButtonPressed(_ sender: Any) {
//        let indexPath = sender as! NSIndexPath
        let num = Int(middleLabel.text!)
        delegate?.addNum(by: self, with: num!)

    }
    
    @IBAction func minusButtonPressed(_ sender: Any) {
        let num = Int(middleLabel.text!)
        delegate?.minusNum(by: self, with: num!)
    }
}

