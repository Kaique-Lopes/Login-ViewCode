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
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Create Function for add elements in view
    func addSubview() {
        self.contentView.addSubview(userImageView)
        self.contentView.addSubview(userLabel)

    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            
            // MARK: - userImageView - UIImageview
            self.userImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.userImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.userImageView.heightAnchor.constraint(equalToConstant: 80),
            self.userImageView.widthAnchor.constraint(equalToConstant: 80),
        
            // MARK: - userLabel - Label
            self.userLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.userLabel.leadingAnchor.constraint(equalTo: self.userImageView.trailingAnchor, constant: 25),

        ])
    }
}
