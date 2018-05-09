//
//  YZFBaseViewController.swift
//  YZFPasswordManagement
//
//  Created by Dylan on 2018/3/27.
//  Copyright © 2018年 Dylan. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


extension BaseViewController {
    
    fileprivate func backBarButtonItemTitle(title:String,tintColor:UIColor) {
        self.navigationController?.navigationBar.topItem?.title = title
        self.navigationController?.navigationBar.tintColor = tintColor
    }
    
    
    public func navigationTitle(_ title: String) {
        self.title = title
    }
    
    public func pushVC(_ classVC: UIViewController) {
        self.navigationController?.pushViewController(classVC, animated: true)
    }
    
    @discardableResult
    public func rightBarButtonItem(_ title: String?, action: Selector?) -> UIBarButtonItem {
        let rightItem = UIBarButtonItem(title: title, style: .plain, target: self, action: action)
        self.navigationItem.rightBarButtonItem = rightItem
        return rightItem
    }
    
    public func backBarButtonItem(_ title: String?, action: Selector?) {
        let rightItem = UIBarButtonItem(title: title, style: .plain, target: self, action: action)
        self.navigationItem.rightBarButtonItem = rightItem
    }
}
