//
//  Localization.swift
//  AnanasModels
//
//  Created by Emil Karimov on 04.04.2023.
//  Copyright © 2023 Emil Karimov. All rights reserved.
//

import Foundation

public enum Localization: String, Codable, CaseIterable {
    
    case ru
    case en
    case fr
    case de
    case es
    case it
    case zh

    static func initial(rawText: String) -> Localization {
        let lowercased = rawText.lowercased()
        let containsRu = lowercased.contains("ru")
        if containsRu {
            return .ru
        }
        let components = lowercased.components(separatedBy: "_")
        for loc in Localization.allCases {
            if components.contains(loc.rawValue) {
                return loc
            }
        }
        return .en
    }

}
