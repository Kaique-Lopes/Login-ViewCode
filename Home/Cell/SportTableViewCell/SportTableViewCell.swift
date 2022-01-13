//
//  SportTableViewCell.swift
//  Login-ViewCode
//
//  Created by Kaique Lopes de Oliveira on 04/01/22.
//

import UIKit

class SportTableViewCell: UITableViewCell {
    var sportTableViewCellScreen: SportTableViewCellScreen = SportTableViewCellScreen()
    
    static var identifier: String = "SportTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubviews()
        self.configConstraints()
        self.sportTableViewCellScreen.configProtocolsCollectionView(delegate: self, dataSource: self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubviews() {
        self.sportTableViewCellScreen.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(self.sportTableViewCellScreen)
    }
    
    func configConstraints() {
            self.sportTableViewCellScreen.anchor(top: self.topAnchor, left: self.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor)
    }
}
extension SportTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: SportCollectionViewCell? = collectionView.dequeueReusableCell(withReuseIdentifier: SportCollectionViewCell.identifier, for: indexPath) as? SportCollectionViewCell
        return cell ?? UICollectionViewCell()
    }
    
    
}

extension SportTableViewCell: UICollectionViewDelegate {
    
}
