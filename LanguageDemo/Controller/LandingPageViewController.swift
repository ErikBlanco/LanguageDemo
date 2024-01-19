//
//  ViewController.swift
//  LanguageDemo
//
//  Created by Erik Blanco on 1/19/24.
//

import UIKit

class LandingPageViewController: UIViewController, LanguageObserver {
    
    private enum localizedText: String {
        case name = "Hello world"
        
        var raw: String {
            return self.rawValue.localized()
        }
    }
    
    //MARK: - Outlets
    @IBOutlet weak var localizedTextLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        LanguageManager.shared.attach(observer: self)
    }

    func languageDidChange(to language: String) {
        localizedTextLabel.text = localizedText.name.raw
    }
    
}

