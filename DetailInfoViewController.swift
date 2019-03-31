//
//  DetailInfoViewController.swift
//  列表视图
//
//  Created by VersonXu on 2019/01/29.
//  Copyright © 2019 VersonXu. All rights reserved.
//

import UIKit

class DetailInfoViewController: UIViewController {
    
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cellphoneLabel: UILabel!
    
    var singleInf: (name: String, imageName: String, phoneNo: String, isMarried: Bool) = ("", "", "", false)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //把这个图片设置成圆形
        //把按键以外的 转成圆角 这两步必写
        avatarImageView.layer.cornerRadius = avatarImageView.frame.height / 2
        avatarImageView.layer.masksToBounds = true
        
        
        avatarImageView.image = UIImage(named: singleInf.imageName)
        
        nameLabel.text = singleInf.phoneNo
        //三木运算符
        
        
//        if singleInf.isMarried {
//            self.view.backgroundColor = .red
//        } else {
//            self.view.backgroundColor = .green
//        }


    }
    @IBAction func returnButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    



}
