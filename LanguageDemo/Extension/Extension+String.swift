//
//  Extension+String.swift
//  LanguageDemo
//
//  Created by Erik Blanco on 1/19/24.
//

import Foundation

extension String {
    func localized() -> String {
        if let appLanguage = DefaultManager.getSelectedLanguage() {
            let path = Bundle.main.path(forResource: appLanguage, ofType: "lproj")
            let bundle = Bundle(path: path!)
            return NSLocalizedString(self, tableName: "Localizable", bundle: bundle!, value: self, comment: self)
        }
        
        let path = Bundle.main.path(forResource: "en", ofType: "lproj")
        let bundle = Bundle(path: path!)
        return NSLocalizedString(self, tableName: "Localizable", bundle: bundle!, value: self, comment: self)
    }
}
