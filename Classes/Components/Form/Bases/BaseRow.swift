//
//  BaseRow.swift
//  YZFPasswordManagement
//
//  Created by Dylan on 2018/5/8.
//  Copyright © 2018年 Dylan. All rights reserved.
//

import Foundation


class BaseRow {
    
    private(set) var identifier: String = "UITableViewCell"
}


import UIKit

class BaseCell: UITableViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    // required 是用来修饰init方法的，说明该构造方法是必须实现的
    required override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    
}




