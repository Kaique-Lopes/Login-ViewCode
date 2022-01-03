//
//  HomeViewController.swift
//  Login-ViewCode
//
//  Created by Kaique Lopes de Oliveira on 03/01/22.
//

import UIKit

class HomeViewController: UIViewController {
    var homescreen = HomeScreen()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.homescreen = HomeScreen()
        self.view = self.homescreen

    }

}
