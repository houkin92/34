//
//  NewViewController.swift
//  列表视图
//
//  Created by VersonXu on 2019/01/31.
//  Copyright © 2019 VersonXu. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {
    
    @IBOutlet weak var newTableView: UITableView!
    @IBOutlet weak var sexLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    
    var infos: [(name: String, imageName: String, phoneNo: String, isMarried: Bool)] = [("如花","如花", "080-2344-7684", false),
                                                                                        ("美女","美女", "080-2124-1254", false),
                                                                                        ("凤姐","凤姐", "080-2644-7654", false),
                                                                                        ("马云","马云", "080-2334-7652", true),
                                                                                        ("刘欢","刘欢", "080-3974-7654", true),
                                                                                        ("赵本山","赵本山", "080-2864-7604", false)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sexLabel.layer.cornerRadius = sexLabel.frame.height / 2
        sexLabel.layer.masksToBounds = true
        sexLabel.text = "你猜"
        sexLabel.textColor = .white
        sexLabel.backgroundColor = .black
        
        nameLabel.text = "我猜不出来"
        nameLabel.backgroundColor = .red

        
        
        
        newTableView.delegate = self
        newTableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension NewViewController:UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return infos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

            let cell = tableView.dequeueReusableCell(withIdentifier: "NewNameCell", for: indexPath) as! NameTableViewCell
            cell.nameLabel.text = infos[indexPath.row].name
            return cell
    }
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetailSegue", sender: indexPath.row)
    }
     func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

            return 60
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetailSegue" {
            let nextPageVC = segue.destination as! DetailInfoViewController
            //把row强转成类型
            let row = sender as! Int
            nextPageVC.singleInf = infos[row]
        }
    }
    
    
}
