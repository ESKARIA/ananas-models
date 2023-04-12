//
//  RecipeStepModel.swift
//  AnanasModels
//
//  Created by Emil Karimov on 17.05.2022
//  Copyright © 2022 Emil Karimov. All rights reserved.
//

import Foundation

public final class RecipeStepModel: Identifiable, Codable {

    public let id: String
    public let step: Int
    public let imageUrl: String?
    public let description: String?
    public let createdAt: Date?
    public let updatedAt: Date?
    
    public init(id: ID, step: Int, imageUrl: String?, description: String?, createdAt: Date?, updatedAt: Date?) {
        self.id = id
        self.step = step
        self.imageUrl = imageUrl
        self.description = description
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

}

extension RecipeStepModel: Hashable, Equatable {
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(step)
        hasher.combine(imageUrl)
        hasher.combine(description)
        hasher.combine(updatedAt)
    }
    
    public static func == (lhs: RecipeStepModel, rhs: RecipeStepModel) -> Bool {
        return lhs.id == rhs.id
            && lhs.step == rhs.step
            && lhs.imageUrl == rhs.imageUrl
            && lhs.description == rhs.description
            && lhs.updatedAt == rhs.updatedAt
    }
    
}
