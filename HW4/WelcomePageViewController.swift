//
//  WelcomePageViewController.swift
//  HW4
//
//  Created by Михаил Милюша on 30.08.2020.
//  Copyright © 2020 Mikhail Miliusha. All rights reserved.
//

import UIKit

class WelcomePageViewController: UIViewController {
    
    var userName: String!

    @IBOutlet var userNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let userName = userName {
            userNameLabel.text = "Welcome, \(userName)!"
        }
}
    @IBAction func logOutAction() {
        dismiss(animated: true)
    }
}

// MARK: - Navigation
extension WelcomePageViewController{
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let aboutMePageVC = tabBarController.viewControllers?[2] as! AboutMeViewController
        aboutMePageVC.userName = userNameLabel.text
    }
}
