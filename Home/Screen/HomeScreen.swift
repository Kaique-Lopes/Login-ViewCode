//
//  HomeScreen.swift
//  Login-ViewCode
//
//  Created by Kaique Lopes de Oliveira on 03/01/22.
//

import UIKit

class HomeScreen: UIView {

    lazy var tableView: UITableView = {
        var tableview = UITableView()
        tableview.translatesAutoresizingMaskIntoConstraints = false
        tableview.backgroundColor = .white
         return tableview
    }()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        self.addSubview()
        self.setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubview() {
        self.addSubview(tableView)
    }
    
    func setupConstraints() {
        self.tableView.anchor(top: self.safeAreaLayoutGuide.topAnchor, left: self.leftAnchor, right: self.rightAnchor)
    }

}
