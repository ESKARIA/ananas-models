//
//  RecipeProductModel.swift
//  AnanasModels
//
//  Created by Emil Karimov on 20.06.2022
//  Copyright © 2022 Emil Karimov. All rights reserved.
//

import Foundation

public final class RecipeProductModel: Identifiable, Codable {
    
    public let id: String
    public let title: String
    public let count: Int?
    public let unit: RecipeProductUnit
    public let createdAt: Date?
    
    public init(id: ID, title: String, count: Int?, unit: RecipeProductUnit, createdAt: Date?) {
        self.id = id
        self.title = title
        self.count = count
        self.unit = unit
        self.createdAt = createdAt
    }

}

public enum RecipeProductUnit: String, Codable {
    
    case grams
    case milliliters
    case taste

}
