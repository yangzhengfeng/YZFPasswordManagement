//
//  YZFPasswordDetailView.swift
//  YZFPasswordManagement
//
//  Created by Dylan on 2018/4/17.
//  Copyright © 2018年 Dylan. All rights reserved.
//


import UIKit

private let cellIdentifier = "cellIdentifier"

class PasswordDetailView: UITableView {
    
    fileprivate var passwordDetailViewModel:PasswordDetailViewModel?
    weak public var didSelectDelegate:TableViewDidSelectDelegate?
    
    convenience init(frame: CGRect, style: UITableViewStyle, viewModel: PasswordDetailViewModel) {
        self.init(frame: frame, style: style)
        
        self.passwordDetailViewModel = viewModel
        self.register(SelectTypeCell.self, forCellReuseIdentifier: cellIdentifier)
        self.delegate = self
        self.dataSource = self
        
    }
    
    override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


extension PasswordDetailView: UITableViewDelegate {
    
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
        
        self.didSelectDelegate?.tableViewDidSelect(withModel: MainModel())
        
    }
}

extension PasswordDetailView: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell:SelectTypeCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! SelectTypeCell
        if cell.isEqual(nil) {
            cell = SelectTypeCell(style: .default, reuseIdentifier: cellIdentifier)
            
        }
        cell.selectionStyle = .none
        return cell;
    }
    
}




