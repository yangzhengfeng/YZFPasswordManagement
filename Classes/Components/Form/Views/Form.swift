//
//  Form.swift
//  YZFPasswordManagement
//
//  Created by Dylan on 2018/5/8.
//  Copyright © 2018年 Dylan. All rights reserved.
//

import Foundation


class Form {
    
//    fileprivate
//    private var
//    var sections = []
    
    
}



import UIKit

class FormView: UITableView {
    
    override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
        self.register(UITableViewCell.self, forCellReuseIdentifier: "cellIdentifier")
        self.delegate = self
        self.dataSource = self
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}


extension FormView: UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    //    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    //        return 80
    //    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //        let mainModel: YZFMainModel = self.passwordViewModel!.mainListData()[indexPath.row]
        
//        self.didSelectDelegate?.tableViewDidSelect(withModel: MainModel())
        
    }
}

extension FormView: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath) as! UITableViewCell
        if cell.isEqual(nil) {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cellIdentifier")
            
        }
        cell.selectionStyle = .none
        return cell;
    }
    
}
