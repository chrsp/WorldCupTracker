//
//  String+CountryName.swift
//  WorldCupTracker
//
//  Created by Charles Prado on 05/12/2022.
//

import Foundation

extension String {
    func countryName() -> String? {
        let current = Locale(identifier: "en_US")
        return current.localizedString(forRegionCode: self)
    }
}
