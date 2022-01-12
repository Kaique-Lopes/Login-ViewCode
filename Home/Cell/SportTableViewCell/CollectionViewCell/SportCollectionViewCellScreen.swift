//
//  SportCollectionViewCellScreen.swift
//  Login-ViewCode
//
//  Created by Kaique Lopes de Oliveira on 11/01/22.
//

import UIKit

class SportCollectionViewCellScreen: UIView {

    lazy var viewBackground: UIView = {
        var view = UIView()
        view.backgroundColor = .cyan
        return view
    }()

    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
