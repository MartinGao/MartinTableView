//
//  MartinTableViewCell.swift
//  MartinTableView
//
//  Created by Martin Gao on 3/3/15.
//  Copyright (c) 2015 SirioLabs. All rights reserved.
//

import UIKit

class MartinTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        println("MartinTableViewCell -> awakeFromNib()")
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }


    override init() {
        super.init();
        println("MartinTableViewCell -> override init()")

    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        println("MartinTableViewCell -> required init(coder aDecoder: NSCoder)")

    }

    override init(frame: CGRect) {
        super.init(frame: frame);
        println("MartinTableViewCell -> override init(frame: CGRect)")

    }

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier);
        println("MartinTableViewCell -> override init(style: UITableViewCellStyle, reuseIdentifier: String?)")

    }

}
