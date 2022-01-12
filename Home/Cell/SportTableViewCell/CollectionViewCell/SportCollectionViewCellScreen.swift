//
//  SportCollectionViewCellScreen.swift
//  Login-ViewCode
//
//  Created by Kaique Lopes de Oliveira on 11/01/22.
//

import UIKit

class SportCollectionViewCellScreen: UIView {

    // MARK: - Criação do componente viewBackground
    lazy var viewBackground: UIView = {
        var view = UIView()
        view.backgroundColor = .cyan
        return view
    }()

    // MARK: - Inicializador
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        self.addSubview()
        self.setupConstraints()
    }
    
    // MARK: - Erro
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Adicionando Elemento na view
    func addSubview(){
        self.addSubview(viewBackground)
    }
    
    // MARK: - Configuração das Constraints dos componentes
    func setupConstraints() {
        self.viewBackground.anchor(top: self.topAnchor, left: self.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor)
    }
}
