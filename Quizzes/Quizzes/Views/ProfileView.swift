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
        myImageView.backgroundColor = .gray
        return myImageView
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
    }
    private func setUpImageView() {
        addSubview(imageView1)
        imageView1.backgroundColor = .gray
        imageView1.translatesAutoresizingMaskIntoConstraints = false
        imageView1.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        imageView1.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 11).isActive = true
        imageView1.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -11).isActive = true
        imageView1.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
}
