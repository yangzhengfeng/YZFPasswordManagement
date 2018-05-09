//
//  YZFPasswordListVC.swift
//  YZFPasswordManagement
//
//  Created by Dylan on 2018/4/12.
//  Copyright © 2018年 Dylan. All rights reserved.
//

import UIKit

class PasswordListVC: BaseViewController {

    fileprivate var editItem: UIBarButtonItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setNavigation()
        
        self.view.addSubview(self.passwordTableView)
    }
    
    private lazy var passwordTableView:PasswordTableView = {
        let passwordTableView = PasswordTableView(frame:UIScreen.main.bounds,style:.plain,viewModel:PasswordViewModel())
        passwordTableView.didSelectDelegate = self
        return passwordTableView;
    }()
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension PasswordListVC: TableViewDidSelectDelegate {
    
    func tableViewDidSelect(withModel model: AnyObject) {
        
//        let passwordModel: YZFPasswordModel = model as! YZFPasswordModel
        let passwordDetailVC = PasswordDetailVC()
        passwordDetailVC.title = "密码详情"
        self.navigationController?.pushViewController(passwordDetailVC, animated: true)
        
//        print("密码详情")
    }
}


extension PasswordListVC {
    
    func setNavigation() {
        self.navigationTitle(self.title!)
        self.editItem =  self.rightBarButtonItem("编辑", action: #selector(rightItemAction))
    }
    
    @objc func rightItemAction() {
        self.passwordTableView.isEdit = !self.passwordTableView.isEdit
        self.editItem?.title = self.passwordTableView.isEdit ? "完成" : "编辑"
    }
}
