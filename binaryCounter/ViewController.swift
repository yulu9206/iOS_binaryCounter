//
//  ViewController.swift
//  binaryCounter
//
//  Created by Lu Yu on 7/12/17.
//  Copyright © 2017 Lu Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var totalLabel: UILabel!
    var nums: [Int] = []
    var total: Int = 0
    override func viewDidLoad() {
//        for i in 0...15 {
//            total += Int(pow(10, i))
//            nums.append(Int(pow(10, i)))
//        }
    }
//    totalLabel.text = "Total: \(total)"

}

extension ViewController: UITableViewDataSource, CustomCellDelegate{

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as! CustomCell
        let num = pow(10,indexPath.row)
        cell.middleLabel.text = "\(num)"
        cell.delegate = self
        
        //        if nums[indexPath.row] > 24 {
        //            cell.leftButton.backgroundColor = UIColor.green
        //        } else {
        //            cell.leftButton.backgroundColor = UIColor.red
        //        }
        // return cell so that Table View knows what to draw in each row
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    func addNum(by controller: CustomCell, with num: Int) {
        total += num
        totalLabel.text = "Total: \(total)"
    }
    func minusNum(by controller: CustomCell, with num: Int){
        total -= num
        totalLabel.text = "Total:\(total)"
    }
}
