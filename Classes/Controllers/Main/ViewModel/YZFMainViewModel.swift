//
//  YZFMainViewModel.swift
//  YZFPasswordManagement
//
//  Created by Dylan on 2018/3/29.
//  Copyright © 2018年 Dylan. All rights reserved.
//

import UIKit

class YZFMainViewModel: NSObject {
    
    public var vc: UIViewController?
    
    
    
    public func mainListData() -> Array<YZFMainModel> {
        
        let titles: [String] = ["网站","邮件","游戏","社交","银行卡","其他"]
        let num: [Int] = [2,3,4,5,6,7]
        
        var models = [YZFMainModel]()
        for index in 0..<titles.count {
            
            let mainModel = YZFMainModel()
            mainModel.typeName = titles[index]
            mainModel.num = num[index]
            
            models.append(mainModel)
        }
        return models
    }
}

extension YZFMainViewModel {
    
    
    
    
    
}


