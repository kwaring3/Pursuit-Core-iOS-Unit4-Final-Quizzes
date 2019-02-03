//
//  ProfileViewController.swift
//  Quizzes
//
//  Created by Kevin Waring on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    var profileView = ProfileView()
    private var imagePicker: UIImagePickerController!
    private var profileCreate = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(profileView)
//        imageButton.tag = indexPath.row
//        imageButton.addTarget(self, action: #selector(imageButtonPressed(sender:)), for: .touchUpInside)
//        let imageButton2 = UIButton(title: "imageButton", style: .plain, target: self, action: #selector(imageButtonPressed))

        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        let alert = UIAlertController.init(title: "Please Enter User Name", message: "No spaces allowed or special Characters", preferredStyle: .alert)
        let submit = UIAlertAction.init(title: "Submit", style: .default) { (UIAlertAction) in
            
//            guard let defaultSearch = alert.textFields?.first?.text else {
//                print("alert textfield is nil")
//                return
//            }
//            self.navigationItem.rightBarButtonItem?.title = defaultSearch
//
//            self.profileCreate = defaultSearch
//
//            //UserDefaults.standard.set(defaultSearch, forKey: UserDefaultsKeys.defaultSearchKey)
//
//            self.dismiss(animated: true, completion: nil)
            
            
        }
            alert.addTextField { (textField) in
            textField.placeholder = "Enter User Name"
            textField.textAlignment = .center
                
        alert.addAction(submit)
        self.present(alert, animated: true, completion: nil)
        }
    }
    private func showImagePickerController() {
        present(imagePicker, animated: true, completion: nil)
    }
    @objc func  imageButtonPressed() {
            imagePicker.sourceType = .photoLibrary
            showImagePickerController()
        
            }
            
            
        }
    

    


