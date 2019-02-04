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
        myLabel.textAlignment = .center
        myLabel.font = UIFont.boldSystemFont(ofSize: 14.0)
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
        setUpButton()
    }
    private func setUpLabel() {
        addSubview(label1)
        label1.backgroundColor = .white
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        label1.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        label1.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11).isActive = true
        label1.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11).isActive = true
    }
    private func setUpButton() {
        addSubview(button)
        button.setImage(UIImage.init(named: "add-icon-filled"), for: .normal)
        button.backgroundColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        button.topAnchor.constraint(equalTo: topAnchor, constant: 11).isActive = true
        button.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        button.heightAnchor.constraint(equalToConstant: 25).isActive = true
        button.widthAnchor.constraint(equalToConstant: 25).isActive = true
    }
}
