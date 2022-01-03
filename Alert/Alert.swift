//
//  Alert.swift
//  Login-ViewCode
//
//  Created by Kaique Lopes de Oliveira on 02/01/22.
//

import Foundation
import UIKit

class Alert: NSObject {
    
    var controller: UIViewController
    
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    func getAlert(title: String, message: String, completion:(() -> Void)? = nil ) {
        
    }
}
