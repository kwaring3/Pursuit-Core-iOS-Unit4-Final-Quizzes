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
        view.addSubview(searchView)
        searchView.searchCollectionView.dataSource = self
        searchView.searchCollectionView.delegate = self
    }
    

    

}
extension SearchViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return info.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SearchCell", for: indexPath) as? SearchCollectionViewCell else {return UICollectionViewCell()}
        let bookToSet = info[indexPath.row]
        cell.label1.text = bookToSet.quizTitle
        cell.backgroundColor = .gray
//        APIClient.getGoogleData(isbn: (bookToSet.book_details.first?.primary_isbn10)!) { (appError, data) in
//            if let appError = appError {
//                print(appError)
//            }
//            if let data = data {
//                ImageHelper.fetchImageFromNetwork(urlString: (data[0].volumeInfo.imageLinks.smallThumbnail.absoluteString), completion: { (appError, image) in
//                    if let appError = appError {
//                        print(appError)
//                    }
//                    if let image = image {
//                        cell.bookImage.image = image
//                    }
//                })
//            }
//        }
        return cell
}
}
