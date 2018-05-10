//
//  YZFPasswordDetailView.swift
//  YZFPasswordManagement
//
//  Created by Dylan on 2018/4/17.
//  Copyright © 2018年 Dylan. All rights reserved.
//


import UIKit

private let cellIdentifier = "cellIdentifier"

class PasswordDetailView: UIView {
    
    fileprivate var passwordDetailViewModel:PasswordDetailViewModel?
    weak public var didSelectDelegate:TableViewDidSelectDelegate?
    
    init(frame: CGRect, viewModel: PasswordDetailViewModel) {
        super.init(frame: frame)
        self.passwordDetailViewModel = viewModel
        self.addSubview(self.formView)
    }
    
    private lazy var formView:FormView = {
        let formView = FormView(frame:UIScreen.main.bounds)
        return formView
    }()
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}







