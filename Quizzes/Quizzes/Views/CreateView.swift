//
//  CreateView.swift
//  Quizzes
//
//  Created by Kevin Waring on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class CreateView: UIView {
    lazy var textView1: UITextView = {
        let textView = UITextView()
        textView.backgroundColor = .purple
        return textView
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
        addSubview(textView1)
        textView1.text = "Enter Quiz Title"
        textView1.backgroundColor = .green
        textView1.translatesAutoresizingMaskIntoConstraints = false
        textView1.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 11).isActive = true
        textView1.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 11).isActive = true
        textView1.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -11).isActive = true
        textView1.heightAnchor.constraint(equalToConstant: 50).isActive = true
        textView1.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
    }
    
    private func setUpTextView1() {
        addSubview(createText1)
        createText1.text = "Enter First Quiz Question"
        createText1.backgroundColor = .gray
        createText1.translatesAutoresizingMaskIntoConstraints = false
        createText1.topAnchor.constraint(equalTo: textView1.bottomAnchor, constant: 11).isActive = true
        createText1.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 11).isActive = true
        createText1.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -11).isActive = true
//        createText1.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        createText1.heightAnchor.constraint(equalToConstant: 200).isActive = true
        createText1.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        
    }
    private func setUpTextView2() {
        addSubview(createText2)
        createText2.text = "Enter Second Quiz Question"
        createText2.backgroundColor = .purple
        createText2.translatesAutoresizingMaskIntoConstraints = false
        createText2.topAnchor.constraint(equalTo: createText1.bottomAnchor, constant: 11).isActive = true
        createText2.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 11).isActive = true
        createText2.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -11).isActive = true
        createText2.heightAnchor.constraint(equalToConstant: 200).isActive = true
        createText2.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        
    }
    
    
}
