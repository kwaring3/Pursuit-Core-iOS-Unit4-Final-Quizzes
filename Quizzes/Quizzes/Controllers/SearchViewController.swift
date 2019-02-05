//
//  SearchViewController.swift
//  Quizzes
//
//  Created by Kevin Waring on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    var segueCards = ""
    var onlineData = [String]()
    var onlineID = ""
    var info = [Quiz]() {
        didSet {
            DispatchQueue.main.async {
                self.searchView.searchCollectionView.reloadData()
            }
        }
    }
        var searchView = SearchView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Search Quizzes Online"
        view.addSubview(searchView)
        searchView.searchCollectionView.dataSource = self
        searchView.searchCollectionView.delegate = self
        APIClient.getQuizInfo { (error, data) in
            if let error = error{
               print(error)
            } else if let data = data {
                self.info = data
            }
        }
    }
    @objc func add() {
        let objectToSave = Favorite.init(quizTitle: segueCards, facts: onlineData, createdAt: Date.getISOTimestamp())
        
        DataPersistenceModel.add1(quiz: objectToSave)
        
        let objectSaved = UIAlertController.init(title: "Quiz is Good", message: nil, preferredStyle: .alert)
        let ok = UIAlertAction.init(title: "ok", style: .default) { (UIAlertAction) in
            self.dismiss(animated: true, completion: nil)
        }
        objectSaved.addAction(ok)
        present(objectSaved, animated: true, completion: nil)
    }


}
extension SearchViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return info.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SearchCell", for: indexPath) as? SearchCollectionViewCell else {return UICollectionViewCell()}
        let dataToSet = info[indexPath.row]
        cell.label1.text = dataToSet.quizTitle
        cell.backgroundColor = .white
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 1
        cell.button.tag = indexPath.row
        cell.button.addTarget(self, action: #selector(add), for: .touchUpInside)

        self.segueCards = dataToSet.quizTitle
        self.onlineData = dataToSet.facts
        self.onlineID = dataToSet.id
        return cell
}
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize.init(width: 400, height: 400)
    }
}

