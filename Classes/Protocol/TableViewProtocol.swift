//
//  YZFTableViewDidSelectProtocol.swift
//  YZFPasswordManagement
//
//  Created by Dylan on 2018/4/16.
//  Copyright © 2018年 Dylan. All rights reserved.
//

import Foundation


protocol TableViewDidSelectDelegate: NSObjectProtocol {
    func tableViewDidSelect(withModel model:AnyObject)
}

