//
//  TabBarController.swift
//  Quizzes
//
//  Created by Kevin Waring on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            let firstViewController = QuizzesViewController()
            
            firstViewController.tabBarItem = UITabBarItem(title:"Quizzes", image: UIImage(named: "quiz-icon"), tag: 0)
            
            let secondViewController = SearchViewController()
            
            secondViewController.tabBarItem = UITabBarItem(title:"Search", image: UIImage(named: "placeholder-image"), tag: 0)
            
            let thirdViewController = CreateViewController()
            
            thirdViewController.tabBarItem = UITabBarItem(title:"Create", image: UIImage(named: "create-icon"), tag: 0)
            
            let fourthViewController = CreateViewController()
            
            fourthViewController.tabBarItem = UITabBarItem(title:"Profile", image: UIImage(named: "profile-unfilled"), tag: 0)
            
            
            
            let tabBarList = [UINavigationController(rootViewController: firstViewController),UINavigationController(rootViewController: secondViewController),UINavigationController(rootViewController: thirdViewController),UINavigationController(rootViewController: fourthViewController)]
            
            viewControllers = tabBarList
        }
        
        
        
        
}
