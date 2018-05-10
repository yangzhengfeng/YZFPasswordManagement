//
//  FormView.swift
//  YZFPasswordManagement
//
//  Created by Dylan on 2018/5/9.
//  Copyright © 2018年 Dylan. All rights reserved.
//

import UIKit


class FormView: UITableView {
    
    
    private var rows = [BaseRow]()
    
    
    convenience public init(frame: CGRect,rows:[BaseRow]) {
        
        self.init(frame: frame,style: .grouped)
        self.register(UITableViewCell.self, forCellReuseIdentifier: "cellIdentifier")
        self.delegate = self
        self.dataSource = self
        self.rows = rows
    }
    
    override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
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
        return self.rows.count
    }
    
    //    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    //        return 80
    //    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

extension FormView: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let row = self.rows[indexPath.row]
        let clsName = "YZFPasswordManagement.\(row.identifier)"
        let cls = NSClassFromString(clsName) as! BaseCell.Type
        
        var cell = tableView.dequeueReusableCell(withIdentifier: clsName)
        
        if cell == nil {
            cell = cls.init(style: .default, reuseIdentifier: clsName)
            cell?.selectionStyle = .none
        }
        
        return cell!;
    }
    
}
