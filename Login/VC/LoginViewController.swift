//
//  ViewController.swift
//  Login-ViewCode
//
//  Created by Kaique Lopes de Oliveira on 17/11/21.
//

import UIKit

class LoginViewController: UIViewController {
    // MARK: - Instance class LoginScreen, for acess methods
    var loginScreen: LoginScreen?
    
    // MARK: - Ceated loadview method, to load methods from the Class LoginScreen
    
    override func loadView() {
        self.loginScreen = LoginScreen()
        self.view = self.loginScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginScreen?.configTextFieldDelegate(delegate: self)
        self.loginScreen?.delegate(delegate: self)
        self.navigationController?.navigationBar.tintColor = .black        
    }
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.loginScreen?.validateTextFields()
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}

extension LoginViewController: LoginScreenProtocol{
    func actionLoginButton() {
        print("Botao Login")
    }
    
    func actionRegisterButton() {
        let registerVC: RegisterViewController = RegisterViewController()
        self.navigationController?.pushViewController(registerVC, animated: true)
    }
    
    
}
