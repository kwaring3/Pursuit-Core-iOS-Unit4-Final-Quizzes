//
//  SearchViewController.swift
//  Quizzes
//
//  Created by Kevin Waring on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
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
//    @objc private func save() {
//        let date = Date.getISOTimestamp()
//        let favorite = Quiz.init(id: self.searchView., quizTitle: <#T##String#>, facts: <#T##[String]#>)
//        DataPersistenceModel.add(quiz: favorite)
//        
//    }

}
extension SearchViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return info.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SearchCell", for: indexPath) as? SearchCollectionViewCell else {return UICollectionViewCell()}
        let dataToSet = info[indexPath.row]
        cell.label1.text = dataToSet.quizTitle
        cell.backgroundColor = .gray

        return cell
}
}
