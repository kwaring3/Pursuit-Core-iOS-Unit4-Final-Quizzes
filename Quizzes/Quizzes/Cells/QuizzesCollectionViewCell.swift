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
        label.backgroundColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 18.0)
        label.textAlignment = .center
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
        setUpButton()
        
    }
    private func setupLabel() {
        addSubview(Label)
        Label.translatesAutoresizingMaskIntoConstraints = false
        Label.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        Label.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        //Label.topAnchor.constraint(equalTo:topAnchor, constant: 5).isActive = true
        Label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11).isActive = true
        Label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11).isActive = true
        Label.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    private func setUpButton() {
        addSubview(button)
        button.setImage(UIImage.init(named: "more-filled"), for: .normal)
        button.backgroundColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        button.topAnchor.constraint(equalTo: topAnchor, constant: 22).isActive = true
        button.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.widthAnchor.constraint(equalToConstant: 50).isActive = true
    }
}
