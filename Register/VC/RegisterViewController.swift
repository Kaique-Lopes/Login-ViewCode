//
//  RegisterViewController.swift
//  Login-ViewCode
//
//  Created by Kaique Lopes de Oliveira on 19/11/21.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
    
    // MARK: - Creating RegisterScreen instance for the viewcontroller to see its methods
    var registerScreen: RegisterScreen?
    var auth: Auth?
    
    // MARK: - Create The UI Elements
    override func loadView() {
        self.registerScreen = RegisterScreen()
        self.view = self.registerScreen
        self.auth = Auth.auth()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerScreen?.configTextFieldDelegate(delegate: self)
        self.registerScreen?.delegate(delegate: self)
    }

}
extension RegisterViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.registerScreen?.validateTextFields()
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}

extension RegisterViewController: RegisterScreenProtocol {
    func actionRegisterButton() {
        // create the alert

    
    
    let email: String = self.registerScreen?.emailTextField.text ?? ""
        let password: String = self.registerScreen?.passwordTextField.text ?? ""
        
        self.auth?.createUser(withEmail: email, password: password, completion: { result, error in
            if error != nil {
                print(" DEU RUIM")
            } else {
                print("DEu bom !")
                let alert = UIAlertController(title: "Conta Criada!", message: "Sua conta foi criada com sucesso!", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
        })
        print("cliquei em registrar")
    }
}
