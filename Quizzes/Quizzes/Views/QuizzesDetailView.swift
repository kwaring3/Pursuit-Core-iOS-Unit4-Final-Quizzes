//
//  QuizzesDetailView.swift
//  Quizzes
//
//  Created by Kevin Waring on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class QuizzesDetailView: UIView {

    lazy var quizDetailCollectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize.init(width: 190, height: 280)
        layout.sectionInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 0, right: 0)
        
        layout.scrollDirection = .vertical
        var cv = UICollectionView.init(frame: self.bounds, collectionViewLayout: layout)
        cv.backgroundColor = .white
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
        self.quizDetailCollectionView.register(SearchCollectionViewCell.self, forCellWithReuseIdentifier: "QuizDetailCell")
        setUpViews()
        
    }
    private func setUpViews() {
        setupQuizDetailCollectionView()
        
    }
    private func setupQuizDetailCollectionView() {
        addSubview(quizDetailCollectionView)
        quizDetailCollectionView.translatesAutoresizingMaskIntoConstraints = false
        quizDetailCollectionView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        quizDetailCollectionView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        quizDetailCollectionView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 0).isActive = true
        quizDetailCollectionView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: 0).isActive = true
        
    }
}
