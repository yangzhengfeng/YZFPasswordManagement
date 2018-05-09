//
//  YZFPasswordModel.swift
//  YZFPasswordManagement
//
//  Created by Dylan on 2018/4/16.
//  Copyright © 2018年 Dylan. All rights reserved.
//

import UIKit

class PasswordModel: NSObject {
    
    /// 类型icon
    public var typeIcon: String?
    
    /// 类型名称
    public var typeName: String?
    
    /// 标题
    public var title: String?
    
    /// 账号名称
    public var name: String?
    
    /// 密码
    public var password: String?
    
    /// 备注
    public var memo: String?
    
    /// 图片
    public var picList: [String]?
    
    /// 创建时间
    public var createTime: Date?

}
