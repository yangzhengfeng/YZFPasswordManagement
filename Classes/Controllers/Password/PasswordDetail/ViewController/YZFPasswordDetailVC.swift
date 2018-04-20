//
//  YZFPasswordDetailVC.swift
//  YZFPasswordManagement
//
//  Created by Dylan on 2018/4/16.
//  Copyright © 2018年 Dylan. All rights reserved.
//

import UIKit

class YZFPasswordDetailVC: YZFBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setNavigation()
        
        self.view.addSubview(self.passwordDetailView)
    }
    
    private lazy var passwordDetailView:YZFPasswordDetailView = {
        let passwordDetailViewModel: YZFPasswordDetailViewModel = YZFPasswordDetailViewModel()
        let passwordDetailView = YZFPasswordDetailView(frame:UIScreen.main.bounds,style:.grouped,viewModel:passwordDetailViewModel)
        passwordDetailView.didSelectDelegate = passwordDetailViewModel
        return passwordDetailView;
    }()
}





extension YZFPasswordDetailVC {
    
    func setNavigation() {
        self.navigationTitle(self.title!)
        self.rightBarButtonItem("保存", action: #selector(rightItemAction))
    }
    
    @objc func rightItemAction() {
        print("保存")
    }
}
