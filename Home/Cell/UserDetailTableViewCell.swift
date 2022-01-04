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

    // MARK: - Create Image User
    lazy var userImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    
    // MARK: - Create Label User
    lazy var userLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        return label
    }()
    
    // MARK: - Create Function for add elements in view
    func addSubview() {
        self.contentView.addSubview(userImageView)
        self.contentView.addSubview(userLabel)

    }
}
