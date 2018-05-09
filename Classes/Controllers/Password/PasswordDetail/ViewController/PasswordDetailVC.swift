//
//  YZFPasswordDetailVC.swift
//  YZFPasswordManagement
//
//  Created by Dylan on 2018/4/16.
//  Copyright © 2018年 Dylan. All rights reserved.
//

import UIKit

class PasswordDetailVC: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setNavigation()
        
        self.view.addSubview(self.passwordDetailView)
    }
    
    private lazy var passwordDetailView:PasswordDetailView = {
        let passwordDetailViewModel: PasswordDetailViewModel = PasswordDetailViewModel()
        let passwordDetailView = PasswordDetailView(frame:UIScreen.main.bounds,style:.grouped,viewModel:passwordDetailViewModel)
        passwordDetailView.didSelectDelegate = passwordDetailViewModel
        return passwordDetailView;
    }()
}

extension PasswordDetailVC {
    
    func setNavigation() {
        self.navigationTitle(self.title!)
        self.rightBarButtonItem("保存", action: #selector(rightItemAction))
    }
    
    @objc func rightItemAction() {
        print("保存")
    }
}
