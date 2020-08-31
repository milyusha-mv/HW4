//
//  ViewController.swift
//  HW4
//
//  Created by Михаил Милюша on 29.08.2020.
//  Copyright © 2020 Mikhail Miliusha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBAction func logInAction() {
        let userData = AuthorizationData.getAuthData()
        guard (userNameTextField.text == userData.login) && (passwordTextField.text == userData.password) else {
            showAlert(with: "Wrong!", and: "Incorrect User name or Password!")
            passwordTextField.text=""
            return
        }
    }
    
    @IBAction func forgetUserNameAction() {
        let login = AuthorizationData.getAuthData()
        showAlert(with: "Forgot User Name?", and: "User name: \(login.login) 😀")
    }
    
    @IBAction func forgotPasswordAction() {
        let pswd = AuthorizationData.getAuthData()
        showAlert(with: "Forgot password?", and: "Your password: \(pswd.password) 🙃")
    }
    
    @IBAction func logOutSegue(segue: UIStoryboardSegue) {
        
    }
}

// MARK: - Navigation
extension ViewController{
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let welcomePageVC = tabBarController.viewControllers?[0] as! WelcomePageViewController
        let aboutMePageVC = tabBarController.viewControllers?[1] as! AboutMeViewController
        welcomePageVC.userName = userNameTextField.text
        aboutMePageVC.userName = userNameTextField.text
    }
}

// MARK: - Alert Controller
extension ViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

