//
//  YZFMainVC.swift
//  YZFPasswordManagement
//
//  Created by Dylan on 2018/3/27.
//  Copyright © 2018年 Dylan. All rights reserved.
//

import UIKit
import SnapKit



class YZFMainVC: YZFBaseViewController {
    
    fileprivate var mainViewModel: YZFMainViewModel?
    fileprivate var editItem: UIBarButtonItem?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setNavigation()
        self.view.addSubview(self.mainTableView)
    }
    
    private lazy var mainTableView:YZFMainTableView = {
        let mainTableView = YZFMainTableView(frame:UIScreen.main.bounds,style:.plain,viewModel:YZFMainViewModel())
        mainTableView.didSelectDelegate = self
        return mainTableView;
    }()
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}


extension YZFMainVC: YZFTableViewDidSelectDelegate {
    func tableViewDidSelect(withModel model: AnyObject) {
        let mainModel: YZFMainModel = model as! YZFMainModel
        let passwordVC = YZFPasswordListVC()
        passwordVC.title = mainModel.typeName
        self.navigationController?.pushViewController(passwordVC, animated: true)
    }
}


extension YZFMainVC {
    
    func setNavigation() {
        self.navigationTitle("密码管理")
       self.editItem =  self.rightBarButtonItem("编辑", action: #selector(rightItemAction))
    }
    
    @objc func rightItemAction() {
        self.mainTableView.isEdit = !self.mainTableView.isEdit
        self.editItem?.title = self.mainTableView.isEdit ? "完成" : "编辑"
    }
}



