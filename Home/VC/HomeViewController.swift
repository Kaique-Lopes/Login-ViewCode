//
//  HomeViewController.swift
//  Login-ViewCode
//
//  Created by Kaique Lopes de Oliveira on 03/01/22.
//

import UIKit

class HomeViewController: UIViewController {
    var homescreen: HomeScreen?
    
    override func loadView() {
        self.homescreen = HomeScreen()
        self.view = homescreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.homescreen?.configTableViewProtocols(delegate: self, dataSource: self)
    }

}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let colors: [UIColor] = [.cyan, .orange, .blue, .gray]
        let cell = UITableViewCell()
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
    
}

extension HomeViewController: UITableViewDelegate {
    
}
