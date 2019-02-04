//
//  QuizzesView.swift
//  Quizzes
//
//  Created by Kevin Waring on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class QuizzesView: UIView {

    lazy var myCollectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
       layout.itemSize = CGSize.init(width: 190, height: 280)
        layout.sectionInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: 0)
        
        layout.scrollDirection = .vertical
        var cv = UICollectionView.init(frame: self.bounds, collectionViewLayout: layout)
        cv.backgroundColor = .orange
        return cv
        
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
       self.myCollectionView.register(QuizzesCollectionViewCell.self, forCellWithReuseIdentifier: "QuizCell")
        
    }
    private func setUpViews() {
        setupCollectionView()
        
}
    private func setupCollectionView() {
        addSubview(myCollectionView)
        myCollectionView.translatesAutoresizingMaskIntoConstraints = false
        myCollectionView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        myCollectionView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        myCollectionView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 0).isActive = true
        myCollectionView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: 0).isActive = true
//        myCollectionView.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0).isActive = true
//        myCollectionView.heightAnchor.constraint(equalToConstant: 400).isActive = true
//        myCollectionView.widthAnchor.constraint(equalToConstant: 400).isActive = true
    }
}
