//
//  HomeViewController.swift
//  Login-ViewCode
//
//  Created by Kaique Lopes de Oliveira on 03/01/22.
//

import UIKit

class HomeViewController: UIViewController {
    var homescreen: HomeScreen?
    var datas: [DataUser] = [DataUser(name: "Kaique", imageName: "men1"),
                             DataUser(name: "Joao", imageName: "men2"),
                             DataUser(name: "Joana", imageName: "girl1")]
    
    override func loadView() {
        self.homescreen = HomeScreen()
        self.view = homescreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.homescreen?.configTableViewProtocols(delegate: self, dataSource: self)
    }

}

extension HomeViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.datas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : UserDetailTableViewCell? = tableView.dequeueReusableCell(withIdentifier: UserDetailTableViewCell.identifier, for: indexPath) as? UserDetailTableViewCell
        cell?.setupCell(data: self.datas[indexPath.row])
        return cell ?? UITableViewCell()
    }
}

extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
}
