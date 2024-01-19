//
//  ThirdViewController.swift
//  LanguageDemo
//
//  Created by Erik Blanco on 1/19/24.
//

import UIKit

class ThirdViewController: UIViewController, LanguageObserver {
    
    @IBOutlet weak var localizedTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        localizedTextLabel.text = localizedText.helloWorld.localized
        LanguageManager.shared.attach(observer: self)
    }
    
    
    @IBAction func nextBtnTapped(_ sender: UIButton) {
        performSegue(withIdentifier: SegueConstants.fourthId, sender: self)
    }
    
    func languageDidChange(to language: String) {
        localizedTextLabel.text = localizedText.helloWorld.localized
    }
}

