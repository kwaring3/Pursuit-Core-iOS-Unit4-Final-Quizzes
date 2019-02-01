//
//  QuizzesCollectionViewCell.swift
//  Quizzes
//
//  Created by Kevin Waring on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class QuizzesCollectionViewCell: UICollectionViewCell {
    
    lazy var Label: UILabel = {
        let label = UILabel()
        label.backgroundColor = .gray
        label.font = UIFont.systemFont(ofSize: 15.0)
        return label
    }()
    lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("+", for: .normal)
        button.titleLabel?.font = UIFont(name: "Futura", size: 50)
        button.setTitleColor(.black , for: .normal)
        return button
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
extension QuizzesCollectionViewCell {
    private func setupCells() {
        
        setupLabel()
        
    }
    private func setupLabel() {
        addSubview(Label)
        Label.translatesAutoresizingMaskIntoConstraints = false
        Label.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        Label.topAnchor.constraint(equalTo:topAnchor, constant: 5).isActive = true
        Label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11).isActive = true
        Label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11).isActive = true
        Label.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
}
