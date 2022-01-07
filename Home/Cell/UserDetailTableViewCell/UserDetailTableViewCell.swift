//
//  UserDetailTableViewCell.swift
//  Login-ViewCode
//
//  Created by Kaique Lopes de Oliveira on 03/01/22.
//

import UIKit

class UserDetailTableViewCell: UITableViewCell {

    static var identifier: String = "UserDetailTableViewCell"
    
    lazy var userDetailView: UserDetailView = {
        var view = UserDetailView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubview()
        self.setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Create Function for add elements in view
    func addSubview() {
        self.contentView.addSubview(userDetailView)
    }
    
    func setupCell(data: DataUser) {
        self.userDetailView.userLabel.text = data.name
        self.userDetailView.userImageView.image = UIImage(named: data.imageName)
    }
    
    func setupConstraints() {
        self.userDetailView.anchor(top: self.topAnchor, left: self.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, paddingTop: 5, paddingLeft: 5, paddingBottom: 5, paddingRight: 5)
    }
}
