//
//  YZFMainTableView.swift
//  YZFPasswordManagement
//
//  Created by Dylan on 2018/3/29.
//  Copyright © 2018年 Dylan. All rights reserved.
//

import UIKit

private let cellIdentifier = "cellIdentifier"



class MainTableView: UITableView {
    
    fileprivate var mainViewModel:MainViewModel?
    weak public var didSelectDelegate:TableViewDidSelectDelegate?
    
    
    public var isEdit: Bool = false {
        didSet {
            self.setEditing(isEdit, animated: true)
        }
    }
    
    convenience init(frame: CGRect, style: UITableViewStyle, viewModel: MainViewModel) {
        self.init(frame: frame, style: style)
        
        self.mainViewModel = viewModel
        self.register(MainTableViewCell.self, forCellReuseIdentifier: cellIdentifier)
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

extension MainTableView {

}


extension MainTableView: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.mainViewModel!.mainListData().count;
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell:MainTableViewCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! MainTableViewCell
        if cell.isEqual(nil) {
            cell = MainTableViewCell(style: .default, reuseIdentifier: cellIdentifier)
        }
        let mainModel: MainModel = self.mainViewModel!.mainListData()[indexPath.row]
        cell.title.text = mainModel.typeName;
        return cell;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let mainModel: MainModel = self.mainViewModel!.mainListData()[indexPath.row]
        self.didSelectDelegate?.tableViewDidSelect(withModel: mainModel)
        
    }
    
}
