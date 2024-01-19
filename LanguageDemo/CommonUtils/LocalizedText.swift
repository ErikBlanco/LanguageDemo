//
//  LocalizedText.swift
//  LanguageDemo
//
//  Created by Erik Blanco on 1/19/24.
//

import Foundation

enum localizedText: String {
    case helloWorld = "Hello world"
    
    var localized: String {
        return self.rawValue.localized()
    }
}
