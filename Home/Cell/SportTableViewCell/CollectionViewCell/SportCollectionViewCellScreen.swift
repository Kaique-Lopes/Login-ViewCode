//
//  SportCollectionViewCellScreen.swift
//  Login-ViewCode
//
//  Created by Kaique Lopes de Oliveira on 11/01/22.
//

import UIKit

class SportCollectionViewCellScreen: UIView {

    // MARK: - Criação de Componentes
    lazy var imageView: UIImageView = {
        var imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .green
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var sportLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = .darkGray
        return label
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
        self.addSubview(imageView)
        self.addSubview(sportLabel)
    }
    
    // MARK: - Configuração das Constraints dos componentes
    func setupConstraints() {
        self.imageView.anchor(top: self.topAnchor, left: self.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor)
    }
}
