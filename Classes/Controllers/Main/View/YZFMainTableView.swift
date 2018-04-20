//
//  YZFMainTableView.swift
//  YZFPasswordManagement
//
//  Created by Dylan on 2018/3/29.
//  Copyright © 2018年 Dylan. All rights reserved.
//

import UIKit

private let cellIdentifier = "cellIdentifier"



class YZFMainTableView: UITableView {
    
    fileprivate var mainViewModel:YZFMainViewModel?
    weak public var didSelectDelegate:YZFTableViewDidSelectDelegate?
    
    
    public var isEdit: Bool = false {
        didSet {
            self.setEditing(isEdit, animated: true)
        }
    }
    
    convenience init(frame: CGRect, style: UITableViewStyle, viewModel: YZFMainViewModel) {
        self.init(frame: frame, style: style)
        
        self.mainViewModel = viewModel
        self.register(YZFMainTableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        self.delegate = self
        self.dataSource = self
        self.tableHeaderView = self.mainSearchController.searchBar
        
    }
    
    override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var mainSearchController:UISearchController = {
        let mainSearchController = UISearchController(searchResultsController: nil)
        return mainSearchController;
    }()
}

extension YZFMainTableView {

}


extension YZFMainTableView: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.mainViewModel!.mainListData().count;
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell:YZFMainTableViewCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! YZFMainTableViewCell
        if cell.isEqual(nil) {
            cell = YZFMainTableViewCell(style: .default, reuseIdentifier: cellIdentifier)
        }
        let mainModel: YZFMainModel = self.mainViewModel!.mainListData()[indexPath.row]
        cell.title.text = mainModel.typeName;
        return cell;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let mainModel: YZFMainModel = self.mainViewModel!.mainListData()[indexPath.row]
        self.didSelectDelegate?.tableViewDidSelect(withModel: mainModel)
        
    }
    
}
