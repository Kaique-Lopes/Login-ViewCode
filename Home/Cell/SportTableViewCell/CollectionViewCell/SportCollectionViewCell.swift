//
//  SportCollectionViewCell.swift
//  Login-ViewCode
//
//  Created by Kaique Lopes de Oliveira on 11/01/22.
//

import UIKit

class SportCollectionViewCell: UICollectionViewCell {
    // MARK: - Identificador de celula
    static let identifier: String = "SportCollectionViewCell"
    
    // MARK: - Referencia da classe sportCollectionViewCellScreen para acessar seus métodos
    let sportCollectionViewCellScreen: SportCollectionViewCellScreen = SportCollectionViewCellScreen()

    override init(frame: CGRect){
        super.init(frame: frame)
        self.addSubView()
        self.configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Funcao que recebe um dado da Model (Sport)
    func setupCell(data: Sport) {
        self.sportCollectionViewCellScreen.imageView.image = UIImage(named: data.nameImage)
        self.sportCollectionViewCellScreen.sportLabel.text = data.name
    }
    
    func addSubView() {
        self.sportCollectionViewCellScreen.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(self.sportCollectionViewCellScreen)
        
    }
    
    func configConstraints() {
        self.sportCollectionViewCellScreen.anchor(top: self.topAnchor, left: self.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor)
    }
}
