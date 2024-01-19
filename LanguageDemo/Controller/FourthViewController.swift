//
//  FourthViewController.swift
//  LanguageDemo
//
//  Created by Erik Blanco on 1/19/24.
//

import UIKit

class FourthViewController: UIViewController {
    
    enum Language: String, CaseIterable {
        case english = "en"
        case hindi = "hi"
        case japanse = "ja"
        case spanish = "es"
    }
    
    @IBOutlet weak var currentLanguageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        currentLanguageLabel.text = "Current language code: \(LanguageManager.shared.selectedLanguage)"
    }
    
    @IBAction func changeLanguageBtnTapped(_ sender: UIButton) {
        LanguageManager.shared.selectedLanguage = Language.allCases.randomElement()!.rawValue
        currentLanguageLabel.text = "Current language code: \(LanguageManager.shared.selectedLanguage)"
    }
}

