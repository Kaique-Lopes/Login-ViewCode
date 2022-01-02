//
//  ViewController.swift
//  Login-ViewCode
//
//  Created by Kaique Lopes de Oliveira on 17/11/21.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    // MARK: - Instance class LoginScreen, for acess methods
    var loginScreen: LoginScreen?
    var auth: Auth?
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
        self.auth = Auth.auth()
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
        guard let login = self.loginScreen else {return}
        self.auth?.signIn(withEmail: login.getEmail(), password: login.getPassword(), completion: { user, error in
            if error != nil {
                print("Verifique seus dados")
            } else {
               if user == nil {
                    print("Tivemos um erro no servidor")
                } else {
                    let alert = UIAlertController(title: "Usuario Logado!", message: "Voce será redirecionado para a tela Home!", preferredStyle: UIAlertController.Style.alert)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
                    print("usuario logado")
                }
            }
        })
    }
    
    func actionRegisterButton() {
        let registerVC: RegisterViewController = RegisterViewController()
        self.navigationController?.pushViewController(registerVC, animated: true)
    }
    
    
}
