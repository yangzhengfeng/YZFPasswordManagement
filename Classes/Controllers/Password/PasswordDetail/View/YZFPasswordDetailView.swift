//
//  YZFPasswordDetailView.swift
//  YZFPasswordManagement
//
//  Created by Dylan on 2018/4/17.
//  Copyright © 2018年 Dylan. All rights reserved.
//


import UIKit

private let cellIdentifier = "cellIdentifier"


class YZFPasswordDetailView: UITableView {
    
    fileprivate var passwordDetailViewModel:YZFPasswordDetailViewModel?
    weak public var didSelectDelegate:YZFTableViewDidSelectDelegate?
    
    convenience init(frame: CGRect, style: UITableViewStyle, viewModel: YZFPasswordDetailViewModel) {
        self.init(frame: frame, style: style)
        
        self.passwordDetailViewModel = viewModel
        self.register(YZFSelectTypeCell.self, forCellReuseIdentifier: cellIdentifier)
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


extension YZFPasswordDetailView: UITableViewDelegate {
    
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
        
        self.didSelectDelegate?.tableViewDidSelect(withModel: YZFMainModel())
        
    }
}

extension YZFPasswordDetailView: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell:YZFSelectTypeCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! YZFSelectTypeCell
        if cell.isEqual(nil) {
            cell = YZFSelectTypeCell(style: .default, reuseIdentifier: cellIdentifier)
            
        }
        cell.selectionStyle = .none
//        cell.textLabel?.text = "11111"
        return cell;
    }
    
}




