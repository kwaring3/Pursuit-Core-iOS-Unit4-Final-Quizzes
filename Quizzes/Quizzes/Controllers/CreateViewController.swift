//
//  CreateViewController.swift
//  Quizzes
//
//  Created by Kevin Waring on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController {
    let createView = CreateView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createView.textView1.delegate = self
        createView.createText1.delegate = self
        createView.createText2.delegate = self
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .plain, target: self, action: #selector(save))
        view.backgroundColor = .white

        view.addSubview(createView)
        
    }
    @objc private func save() {
        let date = Date.getISOTimestamp()
        let favorite = Favorite.init(quizTitle: self.createView.textView1.text , facts: [self.createView.createText1.text, self.createView.createText2.text], createdAt: date)
        DataPersistenceModel.add(quiz: favorite)
            
        }
        
        
    }
extension CreateViewController: UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = ""
    }
    
}
    

    

