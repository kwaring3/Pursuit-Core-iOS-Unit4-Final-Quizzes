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
        textField.backgroundColor = .purple
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
        setUpTextView1()
        setUpTextView2()
    }
    private func setUpTextField() {
        addSubview(textField)
        textField.backgroundColor = .green
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 11).isActive = true
        textField.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 11).isActive = true
        textField.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -11).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        textField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
    }
    
    private func setUpTextView1() {
        addSubview(createText1)
        createText1.backgroundColor = .gray
        createText1.translatesAutoresizingMaskIntoConstraints = false
        createText1.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 22).isActive = true
        createText1.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 11).isActive = true
        createText1.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: -11).isActive = true
        createText1.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        createText1.heightAnchor.constraint(equalToConstant: 100).isActive = true
        createText1.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        
    }
    private func setUpTextView2() {
        addSubview(createText2)
        createText2.translatesAutoresizingMaskIntoConstraints = false
        createText2.topAnchor.constraint(equalTo: createText1.bottomAnchor, constant: 22).isActive = true
        createText2.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 11).isActive = true
        createText2.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: -11).isActive = true
        createText2.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        
    }
    
    
}
