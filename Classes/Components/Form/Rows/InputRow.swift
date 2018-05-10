//
//  InputRow.swift
//  YZFPasswordManagement
//
//  Created by Dylan on 2018/5/9.
//  Copyright © 2018年 Dylan. All rights reserved.
//

import Foundation

class InputRow: BaseRow {
    
    override var identifier:String {
        get {
            return "InputCell"
        }
    }
}



import UIKit

class InputCell: BaseCell {
    
    required init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        self.accessoryType = .disclosureIndicator
        commonInit()
    }
    
    fileprivate func commonInit(){
        
        self.stackView.addArrangedSubview(self.title)
        self.stackView.addArrangedSubview(self.content)
        self.content.setContentHuggingPriority(UILayoutPriority(rawValue: 100), for: .horizontal)
        self.contentView.addSubview(self.stackView)
        
        addConstraints()
    }
    
    fileprivate func addConstraints(){
        self.stackView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview().inset(UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10))
        }
    }
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.spacing = 5
        return stackView;
    }()
    
    public lazy var title: UILabel = {
        let title = UILabel()
        title.text = "类型："
        title.font = UIFont.systemFont(ofSize: 16)
        return title;
    }()
    
    private lazy var content: UITextField = {
        let content = UITextField()
        content.font = UIFont.systemFont(ofSize: 14)
        content.placeholder = "请输入"
        return content
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

