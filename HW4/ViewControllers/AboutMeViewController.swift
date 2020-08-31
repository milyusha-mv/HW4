//
//  AboutMeViewController.swift
//  HW4
//
//  Created by Михаил Милюша on 31.08.2020.
//  Copyright © 2020 Mikhail Miliusha. All rights reserved.
//

import UIKit

class AboutMeViewController: UIViewController {

    var userName: String!
    
    @IBOutlet var userNameLabel: UILabel!
    
    @IBOutlet var aboutMeTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let userName = userName {
            userNameLabel.text = "My name is \(userName)!"
        }
        let aboutMetext = AboutMeData.getAboutMeData()
        aboutMeTextView.text = aboutMetext.text
        
    }

}
