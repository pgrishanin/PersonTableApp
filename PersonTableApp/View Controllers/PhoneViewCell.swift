//
//  PhoneViewCell.swift
//  PersonTableApp
//
//  Created by Pavel Grishanin on 03.11.2020.
//

import UIKit

class PhoneViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        textLabel?.font = UIFont.italicSystemFont(ofSize: 15)
        textLabel?.textColor = .blue
    }

}
