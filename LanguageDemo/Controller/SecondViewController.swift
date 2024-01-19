//
//  SecondViewController.swift
//  LanguageDemo
//
//  Created by Erik Blanco on 1/19/24.
//

import UIKit

class SecondViewController: UIViewController, LanguageObserver {
    @IBOutlet weak var localizedTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        localizedTextLabel.text = localizedText.helloWorld.localized
        
        // We do not attach self to be observed. Once the view appears it will get the current localized text, but
        // when we go back in the NavigationStack, it will not update to the changed text
        // LanguageManager.shared.attach(observer: self)
    }
    
    @IBAction func nextBtnTapped(_ sender: UIButton) {
        performSegue(withIdentifier: SegueConstants.thirdId, sender: self)
    }
    
    func languageDidChange(to language: String) {
        localizedTextLabel.text = localizedText.helloWorld.localized
    }
}

