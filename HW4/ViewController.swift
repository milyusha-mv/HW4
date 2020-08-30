//
//  ViewController.swift
//  HW4
//
//  Created by Михаил Милюша on 29.08.2020.
//  Copyright © 2020 Mikhail Miliusha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func logInAction() {
        showAlert(with: "Test", and: "Test")
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

