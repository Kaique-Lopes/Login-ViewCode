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
        self.configBackgroundColor()
        self.setupConstraints()
    }
    
    func addSubview() {
        self.addSubview(self.tableView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configBackgroundColor() {
        backgroundColor = UIColor(red: 24/255, green: 117/255, blue: 104/255, alpha: 1)
    }
    
    func configTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        self.tableView.delegate = delegate
        self.tableView.dataSource = dataSource
    }
    
    
    func setupConstraints() {
//        self.tableView.anchor(top: self.safeAreaLayoutGuide.topAnchor, left: self.leftAnchor, right: self.rightAnchor)
        NSLayoutConstraint.activate([
            self.tableView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            self.tableView.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor),
            self.tableView.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor),
            self.tableView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor)
        ])
    }

}
