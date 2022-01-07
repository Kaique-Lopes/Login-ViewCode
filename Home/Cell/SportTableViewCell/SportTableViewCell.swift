//
//  SportTableViewCell.swift
//  Login-ViewCode
//
//  Created by Kaique Lopes de Oliveira on 04/01/22.
//

import UIKit

class SportTableViewCell: UITableViewCell {
    var sportTableViewCellScreen: SportTableViewCellScreen = SportTableViewCellScreen()
    
    static var identifier: String = "SportTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
