//
//  ViewController.swift
//  Dark Mode Demo
//
//  Created by Ashwani on 27/09/19.
//  Copyright © 2019 Ashwani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    private var textStringLight = "Welcome fellow developer"
    private var textStringDark = "Welcome to the Dark Side fellow developer"
    
    override func viewWillLayoutSubviews() {
        view.backgroundColor = UIColor.white
        greetingLabel.textColor = UIColor.black
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        if traitCollection.userInterfaceStyle == .dark {
            greetingLabel.text = textStringDark
        } else {
            greetingLabel.text = textStringLight
        }
    }
}

