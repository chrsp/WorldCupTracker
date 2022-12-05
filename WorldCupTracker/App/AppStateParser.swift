//
//  AppStateParser.swift
//  WorldCupTracker
//
//  Created by Charles Prado on 30/11/2022.
//

import Foundation

struct AppStateParser {
    
    func parse(_ userInfo: [AnyHashable: Any]) {
        if let matches = parse(userInfo["matches"], into: [Match].self) {
            AppState.shared.matches.update(matches)
        }
        
        if let currentMatch = parse(userInfo["currentMatch"], into: Match.self) {
            AppState.shared.matches.update(currentMatch)
        }
        
        // Any other parse...
    }
    
    private func parse<T: Codable>(_ node: Any?, into type: T.Type) -> T? {
        guard let node = node else {
            return nil
        }
        
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: node)
            let decoded = try JSONDecoder().decode(type, from: jsonData)
            return decoded
        }
        catch {
            print(error)
            return nil 
        }
    }
}

