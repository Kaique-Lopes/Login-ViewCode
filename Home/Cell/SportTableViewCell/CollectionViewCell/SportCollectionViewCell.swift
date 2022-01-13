//
//  SportCollectionViewCell.swift
//  Login-ViewCode
//
//  Created by Kaique Lopes de Oliveira on 11/01/22.
//

import UIKit

class SportCollectionViewCell: UICollectionViewCell {
    static let identifier: String = "SportCollectionViewCell"
    let sportCollectionViewCellScreen: SportCollectionViewCellScreen = SportCollectionViewCellScreen()

    override init(frame: CGRect){
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubView() {
        self.sportCollectionViewCellScreen.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(self.sportCollectionViewCellScreen)
    }
    
    func configConstraints() {
        self.sportCollectionViewCellScreen.anchor(top: self.topAnchor, left: self.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor)
    }
}
