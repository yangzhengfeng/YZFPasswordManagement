//
//  YZFPasswordListCell.swift
//  YZFPasswordManagement
//
//  Created by Dylan on 2018/4/16.
//  Copyright © 2018年 Dylan. All rights reserved.
//

import UIKit

class YZFPasswordListCell: UITableViewCell {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        self.accessoryType = .disclosureIndicator
        commonInit()
    }
    
    fileprivate func commonInit(){
        self.contentView.addSubview(self.iconImg)
        self.contentView.addSubview(self.rightStackView)
        
        self.rightStackView.addArrangedSubview(self.title)
        self.rightStackView.addArrangedSubview(self.name)
        self.rightStackView.addArrangedSubview(self.password)
        
        addConstraints()
    }
    
    fileprivate func addConstraints(){
        self.iconImg.snp.makeConstraints { (make) in
            make.width.height.equalTo(50)
            make.left.equalTo(15)
            make.top.equalTo(15)
        }
        
        self.rightStackView.snp.makeConstraints { (make) in
            make.height.equalTo(60)
            make.top.equalTo(10)
            make.left.equalTo(self.iconImg.snp.right).offset(15)
            make.centerY.equalTo(self.iconImg.snp.centerY)
            make.right.equalTo(-20)
        }
    }
    
    
    private lazy var iconImg: UIImageView = {
        let iconImg = UIImageView()
        iconImg.image = UIImage.init(named: "icon")
        return iconImg;
    }()
    
    private lazy var rightStackView: UIStackView = {
        let rightStackView = UIStackView()
        rightStackView.axis = .vertical
        rightStackView.spacing = 5
        rightStackView.backgroundColor = UIColor.yellow
        return rightStackView;
    }()
    
    
    public lazy var title: UILabel = {
        let title = UILabel()
        title.text = "淘宝网"
        return title;
    }()
    
    private lazy var name: UILabel = {
        let name = UILabel()
        name.font = UIFont.systemFont(ofSize: 12)
        name.text = "账号：zhanghao"
        return name
    }()
    
    private lazy var password: UILabel = {
        let password = UILabel()
        password.font = UIFont.systemFont(ofSize: 12)
        password.text = "密码：8888888"
        return password
    }()
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
