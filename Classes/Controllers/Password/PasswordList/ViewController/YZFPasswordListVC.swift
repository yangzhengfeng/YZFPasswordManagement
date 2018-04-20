//
//  YZFPasswordListVC.swift
//  YZFPasswordManagement
//
//  Created by Dylan on 2018/4/12.
//  Copyright © 2018年 Dylan. All rights reserved.
//

import UIKit

class YZFPasswordListVC: YZFBaseViewController {

    fileprivate var editItem: UIBarButtonItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setNavigation()
        
        self.view.addSubview(self.passwordTableView)
    }
    
    private lazy var passwordTableView:YZFPasswordTableView = {
        let passwordTableView = YZFPasswordTableView(frame:UIScreen.main.bounds,style:.plain,viewModel:YZFPasswordViewModel())
        passwordTableView.didSelectDelegate = self
        return passwordTableView;
    }()
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension YZFPasswordListVC: YZFTableViewDidSelectDelegate {
    
    func tableViewDidSelect(withModel model: AnyObject) {
        
//        let passwordModel: YZFPasswordModel = model as! YZFPasswordModel
        let passwordDetailVC = YZFPasswordDetailVC()
        passwordDetailVC.title = "密码详情"
        self.navigationController?.pushViewController(passwordDetailVC, animated: true)
        
//        print("密码详情")
    }
}


extension YZFPasswordListVC {
    
    func setNavigation() {
        self.navigationTitle(self.title!)
        self.editItem =  self.rightBarButtonItem("编辑", action: #selector(rightItemAction))
    }
    
    @objc func rightItemAction() {
        self.passwordTableView.isEdit = !self.passwordTableView.isEdit
        self.editItem?.title = self.passwordTableView.isEdit ? "完成" : "编辑"
    }
}
