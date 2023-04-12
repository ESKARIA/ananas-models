//
//  RecipeCategoryModel.swift
//  AnanasModels
//
//  Created by Emil Karimov on 17.05.2022.
//  Copyright © 2022 Emil Karimov. All rights reserved.
//

import Foundation

public final class RecipeCategoryModel: Identifiable, Codable {

    public let id: Int
    public let title: String
    public let iconId: Int
    public let color: ColorModel
    public let recipes: Int

    public init(id: ID, title: String, iconId: Int, color: ColorModel, recipes: Int? = 0) {
        self.id = id
        self.title = title
        self.iconId = iconId
        self.color = color
        self.recipes = recipes ?? 0
    }

}

extension RecipeCategoryModel: Hashable, Equatable {

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(title)
        hasher.combine(iconId)
        hasher.combine(color)
        hasher.combine(recipes)
    }

    public static func == (lhs: RecipeCategoryModel, rhs: RecipeCategoryModel) -> Bool {
        return lhs.id == rhs.id
            && lhs.title == rhs.title
            && lhs.iconId == rhs.iconId
            && lhs.color.id == rhs.color.id
            && lhs.recipes == rhs.recipes
    }
    
}
