//
//  MainTableViewController.swift
//  列表视图
//
//  Created by VersonXu on 2019/01/29.
//  Copyright © 2019 VersonXu. All rights reserved.
//

import UIKit


class MainTableViewController: UITableViewController {
    
    var infos: [(name: String, imageName: String, phoneNo: String, isMarried: Bool)] = [("如花","如花", "080-2344-7684", false),
                                                                                        ("美女","美女", "080-2124-1254", false),
                                                                                        ("凤姐","凤姐", "080-2644-7654", false),
                                                                                        ("马云","马云", "080-2334-7652", true),
                                                                                        ("刘欢","刘欢", "080-3974-7654", true),
                                                                                        ("赵本山","赵本山", "080-2864-7604", false)]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
  
    }
    // section可以理解称为单元，
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return infos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HeaderCell", for: indexPath) as! HeaderTableViewCell
//            cell.headerLabel.text = "\(indexPath.section)年纪"
//            cell.textLabel?.backgroundColor = .gray
//            cell.contentView.backgroundColor = .gray
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "NameCell", for: indexPath) as! NameTableViewCell
            cell.nameLabel.text = infos[indexPath.row].name
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 40
        } else {
            return 60
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetailSegue", sender: indexPath.row)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetailSegue" {
            let nextPageVC = segue.destination as! DetailInfoViewController
            //把row强转成类型
            let row = sender as! Int
            nextPageVC.singleInf = infos[row]
        }
    }
    
    
    //    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    //        return "\(section + 1)地区"
    //    }
    //
    //    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    //        return 20
    //    }
    
    
    
    
}
