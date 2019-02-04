//
//  QuizzesViewController.swift
//  Quizzes
//
//  Created by Kevin Waring on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class QuizzesViewController: UIViewController {

    let quizzesView = QuizzesView()
    var quizInfo = [Favorite]() {
        didSet{
            quizzesView.myCollectionView.reloadData()
        }
            
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(quizzesView)
        quizzesView.myCollectionView.dataSource = self
        quizInfo = DataPersistenceModel.get()
    
        
    }
    override func viewWillAppear(_ animated: Bool) {
        quizInfo = DataPersistenceModel.get()
    }
    

    

}
extension QuizzesViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return quizInfo.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "QuizCell", for: indexPath) as? QuizzesCollectionViewCell else {return UICollectionViewCell()}
        cell.Label.text = quizInfo[indexPath.row].quizTitle
        cell.backgroundColor = .white
        return cell
    }
    
    
}
