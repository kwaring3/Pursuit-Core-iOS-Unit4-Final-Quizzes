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
    private var descriptionText = "Name"
    private var imagePicker: UIImagePickerController!
    private var profileCreate = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(profileView)
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        let imageButton2 = profileView.imageButton
        imageButton2.addTarget(self, action: #selector(imageButtonPressed), for: .touchUpInside)
        let iButton = profileView.invisibleButton
        iButton.addTarget(self, action: #selector(iButtonPressed), for: .touchUpInside)
        self.title = "Profile"
        view.backgroundColor = .white
        
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        if profileView.profileNamelabel.text == "Name" {
            alert()
        }
        
    }
    private func showImagePickerController() {
        present(imagePicker, animated: true, completion: nil)
    }
    @objc func alert() {
        let alert = UIAlertController.init(title: "Please Enter User Name", message: "No spaces allowed or special Characters", preferredStyle: .alert)
        let submit = UIAlertAction.init(title: "Submit", style: .default) { (UIAlertAction) in
            
            guard let defaultSearch = alert.textFields?.first?.text else {
                print("alert textfield is nil")
                return
            }
            
            self.profileView.profileNamelabel.text = defaultSearch
            
            
            self.dismiss(animated: true, completion: nil)
            
            
        }
        alert.addTextField { (textField) in
            textField.placeholder = "Enter User Name"
            textField.textAlignment = .center
            
            alert.addAction(submit)
            self.present(alert, animated: true, completion: nil)
        }
    }
    @objc func  imageButtonPressed() {
            imagePicker.sourceType = .photoLibrary
            showImagePickerController()
        
            }
    @objc func iButtonPressed() {
        let alert = UIAlertController.init(title: "Please Enter User Name", message: "No spaces allowed or special Characters", preferredStyle: .alert)
        let submit = UIAlertAction.init(title: "Submit", style: .default) { (UIAlertAction) in
            
            guard let defaultSearch = alert.textFields?.first?.text else {
                print("alert textfield is nil")
                return
            }
            
            self.profileView.profileNamelabel.text = defaultSearch
            
            
            self.dismiss(animated: true, completion: nil)
            
            
        }
        alert.addTextField { (textField) in
            textField.placeholder = "Enter User Name"
            textField.textAlignment = .center
            
            alert.addAction(submit)
            self.present(alert, animated: true, completion: nil)
        }
    }
            
            
        }
extension ProfileViewController:
UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            profileView.imageButton.setBackgroundImage(image, for: .normal)
            print(image)
            
        } else {
            print("nil")
        }
        dismiss(animated: true, completion: nil)
        
    }
    
}
extension ProfileViewController: UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        if profileView.profileNamelabel.text == descriptionText {
             profileView.profileNamelabel.text = ""
            profileView.profileNamelabel.textColor = .gray
        }
    }
}
    

    


