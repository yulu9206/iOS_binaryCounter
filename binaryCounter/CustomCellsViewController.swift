//
//  CustomCellsViewController.swift
//  binaryCounter
//
//  Created by Lu Yu on 7/12/17.
//  Copyright © 2017 Lu Yu. All rights reserved.
//

import UIKit
class CustomCellsViewController: UITableViewController {
//    var nums = [1, 90, 32, 23, 9, 12]
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as! CustomCell
        let num = indexPath.row
        var result = 1
        if num > 0 {
            for _ in 0...num {
                result *= 10
            }
        }
        cell.middleLabel.text = "\(result)"
//        if nums[indexPath.row] > 24 {
//            cell.leftButton.backgroundColor = UIColor.green
//        } else {
//            cell.leftButton.backgroundColor = UIColor.red
//        }
        // return cell so that Table View knows what to draw in each row
        return cell
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
}
