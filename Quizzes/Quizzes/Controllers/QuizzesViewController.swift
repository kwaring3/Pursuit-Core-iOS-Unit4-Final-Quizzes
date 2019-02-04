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
    var quizzes = DataPersistenceModel.get()
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
        self.title = "My Quizzes"
    
        
    }
    override func viewWillAppear(_ animated: Bool) {
        quizInfo = DataPersistenceModel.get()
    }
    func reload() {
        quizzes = DataPersistenceModel.get()
        quizzesView.myCollectionView.reloadData()
    }
    @objc func buttonPressed(sender: UIButton) {
        let index = sender.tag
        let actionSheet = UIAlertController.init(title: nil, message: nil, preferredStyle: .actionSheet)
        let delete = UIAlertAction(title: "Delete", style: .destructive) { (UIAlertAction) in
            DataPersistenceModel.deleteQuiz(index: index);index
            self.reload()
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (alert: UIAlertAction!) -> Void in
            
        }
        
        actionSheet.addAction(delete)
        actionSheet.addAction(cancelAction)
        self.present(actionSheet, animated: true, completion: nil)
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
        cell.button.tag = indexPath.row
        cell.button.addTarget(self, action: #selector(buttonPressed(sender:)), for: .touchUpInside)
        return cell
    }
    
    
}
