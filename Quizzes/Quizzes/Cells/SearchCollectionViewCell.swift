//
//  SearchCollectionViewCell.swift
//  Quizzes
//
//  Created by Kevin Waring on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class SearchCollectionViewCell: UICollectionViewCell {
    lazy var label1: UILabel = {
        let myLabel = UILabel()
        return myLabel
    }()
    lazy var button: UIButton = {
        let myButton = UIButton()
        return myButton
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
        fatalError("init(coder:) has not been implemented")
    }
    private func commonInit() {
        setupCells()
    }
}
extension SearchCollectionViewCell {
    private func setupCells() {
       setUpLabel()
    }
    private func setUpLabel() {
        addSubview(label1)
        label1.backgroundColor = .white
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }
}
