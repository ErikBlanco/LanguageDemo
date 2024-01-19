//
//  ViewController.swift
//  LanguageDemo
//
//  Created by Erik Blanco on 1/19/24.
//

import UIKit

class FirstViewController: UIViewController, LanguageObserver {
    //MARK: - Outlets
    @IBOutlet weak var localizedTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        localizedTextLabel.text = localizedText.helloWorld.localized
        LanguageManager.shared.attach(observer: self)
    }

    func languageDidChange(to language: String) {
        localizedTextLabel.text = localizedText.helloWorld.localized
    }
    
    @IBAction func nextBtnTapped(_ sender: UIButton) {
        performSegue(withIdentifier: SegueConstants.secondId, sender: self)
    }
}

