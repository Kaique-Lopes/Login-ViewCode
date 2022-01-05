//
//  UserDetailView.swift
//  Login-ViewCode
//
//  Created by Kaique Lopes de Oliveira on 04/01/22.
//

import UIKit

class UserDetailView: UIView {
    
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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Create Function for add elements in view
    func addSubview() {
        self.addSubview(userImageView)
        self.addSubview(userLabel)

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
