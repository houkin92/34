//
//  HeaderTableViewCell.swift
//  列表视图
//
//  Created by VersonXu on 2019/01/29.
//  Copyright © 2019 VersonXu. All rights reserved.
//

import UIKit

class HeaderTableViewCell: UITableViewCell {
    
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var headerButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        headerButton.layer.cornerRadius = headerButton.frame.height / 2
        
        

    }

}
