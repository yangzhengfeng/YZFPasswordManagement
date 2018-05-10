//
//  Form.swift
//  YZFPasswordManagement
//
//  Created by Dylan on 2018/5/8.
//  Copyright © 2018年 Dylan. All rights reserved.
//

import Foundation
import YZFUIKit

//typealias loadClosure = (_ view: UIView) ->Void

class Form {
    
    public var rows = [BaseRow]()
    public var sections = [String]()
    
    
//    public var load: loadClosure?
    
    init(view: UIView) {
        
        self.rows = [SelectRow(),SelectRow()]
        
        let formView = FormView(frame:kScreenBounds,rows: self.rows)
        view.addSubview(formView)
    }
    
}




