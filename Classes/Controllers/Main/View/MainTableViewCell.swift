//
//  YZFMainTableViewCell.swift
//  YZFPasswordManagement
//
//  Created by Dylan on 2018/4/2.
//  Copyright © 2018年 Dylan. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        commonInit()
    }
    
    
    
    fileprivate func commonInit(){
        self.contentView.addSubview(self.iconImg)
        self.contentView.addSubview(self.title)
        self.contentView.addSubview(self.num)
        
        
        self.iconImg.snp.makeConstraints { (make) in
            make.width.height.equalTo(40)
            make.left.equalTo(10)
            make.top.equalTo(10)
        }
        
        self.title.snp.makeConstraints { (make) in
            make.height.equalTo(30)
            make.left.equalTo(self.iconImg.snp.right).offset(10)
            make.centerY.equalTo(self.iconImg.snp.centerY)
            make.right.equalTo(-100)
        }
        
        self.num.snp.makeConstraints { (make) in
            make.width.equalTo(50)
            make.height.equalTo(self.title.snp.height)
            make.top.equalTo(self.title.snp.top)
            make.right.equalTo(-20)
        }
        
        
    }
    
    private lazy var iconImg: UIImageView = {
        let iconImg = UIImageView()
        iconImg.image = UIImage.init(named: "icon")
        return iconImg;
    }()
    
    public lazy var title: UILabel = {
        let title = UILabel()
        title.text = "阿斯顿发生"
//        title.backgroundColor = UIColor.lightGray
        return title;
    }()
    
    private lazy var num: UILabel = {
        let num = UILabel()
        num.text = "88"
        num.textAlignment = .right
//        num.backgroundColor = UIColor.lightGray
        return num
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
