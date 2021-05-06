//
//  BaseTabBarController.swift
//  AppStoreClone
//
//  Created by Tomasz Oskroba on 5/5/21.
//

import UIKit

class BaseTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let redViewController = UIViewController()
        redViewController.view.backgroundColor = .red
        redViewController.navigationItem.title = "APPS"
        
        let redNavController = UINavigationController(rootViewController: redViewController)
        redNavController.tabBarItem.title = "RED NAV"
        redNavController.navigationBar.prefersLargeTitles = true
        
        let blueViewController = UIViewController()
        blueViewController.view.backgroundColor = .blue
        blueViewController.navigationItem.title = "SEARCH"
        
        let blueNavController = UINavigationController(rootViewController: blueViewController)
        blueNavController.tabBarItem.title = "BLUE NAVE"
        blueNavController.navigationBar.prefersLargeTitles = true
        
        viewControllers = [
            redNavController,
            blueNavController
        ]
    }
}
