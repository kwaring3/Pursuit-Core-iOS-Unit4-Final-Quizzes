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
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancel))
        view.backgroundColor = .white

        view.addSubview(createView)
        
    }
    override func viewDidAppear(_ animated: Bool) {
        reset()
    }
//    override func viewWillAppear(_ animated: Bool) {
//        modalPresentationStyle.hashValue
//    }
    private func reset() {
        createView.textView1.text = "Enter Quiz Title"
        createView.createText1.text = "Enter First Question Here"
        createView.createText2.text = "Enter Second Question Here"
    }
    @objc private func save() {
        let date = Date.getISOTimestamp()
        let favorite = Favorite.init(quizTitle: self.createView.textView1.text , facts: [self.createView.createText1.text, self.createView.createText2.text], createdAt: date)
        DataPersistenceModel.add1(quiz: favorite)
        
        reset()
        
        
            
        }
    @objc private func cancel() {
          dismiss(animated: true, completion: nil)
        
    }
        
        
    }
extension CreateViewController: UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = ""
    }
    
}
    

    

