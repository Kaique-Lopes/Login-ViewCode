//
//  UserDetailTableViewCell.swift
//  Login-ViewCode
//
//  Created by Kaique Lopes de Oliveira on 03/01/22.
//

import UIKit
import SwiftUI

class UserDetailTableViewCell: UITableViewCell {

    static var identifier: String = "UserDetailTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Create Function for add elements in view
    func addSubview() {
    }
    
    func setupCell(data: DataUser) {
//        self.userLabel.text = data.name
//        self.userImageView.image = UIImage(named: data.imageName)
    }
    
}
