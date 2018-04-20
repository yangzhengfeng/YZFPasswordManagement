//
//  YZFPasswordTableView.swift
//  YZFPasswordManagement
//
//  Created by Dylan on 2018/4/16.
//  Copyright © 2018年 Dylan. All rights reserved.
//

import UIKit

private let cellIdentifier = "cellIdentifier"


class YZFPasswordTableView: UITableView {
    
    fileprivate var passwordViewModel:YZFPasswordViewModel?
    weak public var didSelectDelegate:YZFTableViewDidSelectDelegate?
    
    
    public var isEdit: Bool = false {
        didSet {
            self.setEditing(isEdit, animated: true)
        }
    }
    
    convenience init(frame: CGRect, style: UITableViewStyle, viewModel: YZFPasswordViewModel) {
        self.init(frame: frame, style: style)
        
        self.passwordViewModel = viewModel
        self.register(YZFPasswordListCell.self, forCellReuseIdentifier: cellIdentifier)
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

extension YZFPasswordTableView {
    
}


extension YZFPasswordTableView: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
//        return self.mainViewModel!.mainListData().count;
        return 10
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell:YZFPasswordListCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! YZFPasswordListCell
        if cell.isEqual(nil) {
            cell = YZFPasswordListCell(style: .default, reuseIdentifier: cellIdentifier)
        }
//        let mainModel: YZFMainModel = self.passwordViewModel!.mainListData()[indexPath.row]
//        cell.title.text = mainModel.typeName;
        return cell;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let mainModel: YZFMainModel = self.passwordViewModel!.mainListData()[indexPath.row]
        
        self.didSelectDelegate?.tableViewDidSelect(withModel: YZFMainModel())
        
        
    }
    
}

