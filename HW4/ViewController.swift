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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
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

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "welcomePageSegue" {
            if let welcomePageVC = segue.destination as? WelcomePageViewController {
                welcomePageVC.userName = "Жопа"
            }
        }
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

