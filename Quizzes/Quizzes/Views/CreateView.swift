//
//  CreateView.swift
//  Quizzes
//
//  Created by Kevin Waring on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class CreateView: UIView {
    lazy var textField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .gray
        return textField
    }()
    lazy var createText1: UITextView = {
        let textView = UITextView()
        textView.backgroundColor = .white
        textView.isEditable = true
        textView.font = UIFont.systemFont(ofSize: 14.0)
        return textView
    }()
    lazy var createText2: UITextView = {
        let textView = UITextView()
        textView.backgroundColor = .white
        textView.isEditable = true
        textView.font = UIFont.systemFont(ofSize: 14.0)
        return textView
    }()
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
        
    }
    private func commonInit(){
        setUpViews()
        //        self.myCollectionView.register(BSCollectionViewCell.self, forCellWithReuseIdentifier: "BestSellerCell")
        
    }
    private func setUpViews() {
        setUpTextField()
        
    }
    private func setUpTextField() {
        addSubview(textField)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 11)
        textField.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 11)
        textField.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -11)
        textField.centerYAnchor.constraint(equalTo: centerYAnchor)
        
    }
    
    private func setUpTextView1() {
        
    }
    
}
