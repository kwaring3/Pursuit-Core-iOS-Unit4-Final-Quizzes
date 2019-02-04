//
//  ProfileView.swift
//  Quizzes
//
//  Created by Kevin Waring on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class ProfileView: UIView {

    lazy var imageView1: UIImageView = {
       let myImageView = UIImageView()
        //myImageView.backgroundColor = .gray
        return myImageView
    }()
    lazy var imageButton: UIButton = {
        let button = UIButton()
        
        return button
    }()
    lazy var profileNamelabel: UILabel = {
        let label = UILabel()
        label.text = "Name"
        return label
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
        setUpImageView()
        setUpButton()
        setUpLabel()
    }
    private func setUpImageView() {
        addSubview(imageView1)
        imageView1.backgroundColor = .gray
        imageView1.translatesAutoresizingMaskIntoConstraints = false
        imageView1.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        imageView1.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 11).isActive = true
        imageView1.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -11).isActive = true
        //imageView1.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -200)
        imageView1.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        imageView1.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }
    private func setUpButton() {
        addSubview(imageButton)
        imageButton.backgroundColor = .black
        imageButton.translatesAutoresizingMaskIntoConstraints = false
        imageButton.topAnchor.constraint(equalTo: imageView1.topAnchor, constant: 30).isActive = true
        //imageView1.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 11).isActive = true
        //imageView1.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -11).isActive = true
        //imageView1.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -200)
        imageButton.heightAnchor.constraint(equalToConstant: 150).isActive = true
        imageButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        imageButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }
    private func setUpLabel() {
        addSubview(profileNamelabel)
        profileNamelabel.backgroundColor = .white
        profileNamelabel.translatesAutoresizingMaskIntoConstraints = false
        profileNamelabel.topAnchor.constraint(equalTo: imageButton.bottomAnchor, constant: 40).isActive = true
        profileNamelabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        profileNamelabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
        profileNamelabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
    }
}
