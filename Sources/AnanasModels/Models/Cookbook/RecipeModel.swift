//
//  RecipeModel.swift
//  AnanasModels
//
//  Created by Emil Karimov on 28.03.2022.
//  Copyright © 2022 Emil Karimov. All rights reserved.
//

import Foundation

public final class RecipeModel: Identifiable, Codable {

    public let id: Int
    public let owner: OwnerSmartModel
    public var title: String
    public var imageUrl: String?
    public var complexity: Int?
    public var portions: Int?
    public var time: Int?
    public var proteins: Int?
    public var fats: Int?
    public var carbohydrates: Int?
    public var kcal: Int?
    public var status: String
    public var description: String?
    public var localization: Localization
    public var category: RecipeCategoryModel
    public var steps: [RecipeStepModel]
    public var likes: Int?
    public var isLiked: Bool?
    public var tags: [String]?
    public var products: [RecipeProductModel]?
    public var comments: [RecipeCommentModel]?
    public var createdAt: Date?
    public var updatedAt: Date?
    
    public init(id: ID, owner: OwnerSmartModel, title: String, imageUrl: String? = nil, complexity: Int? = nil, portions: Int? = nil, time: Int? = nil, proteins: Int? = nil, fats: Int? = nil, carbohydrates: Int? = nil, kcal: Int? = nil, status: String, description: String?, localization: Localization, category: RecipeCategoryModel, steps: [RecipeStepModel], likes: Int? = nil, isLiked: Bool? = nil, tags: [String]? = nil, products: [RecipeProductModel]?, comments: [RecipeCommentModel]?, createdAt: Date? = nil, updatedAt: Date? = nil) {
        self.id = id
        self.owner = owner
        self.title = title
        self.imageUrl = imageUrl
        self.complexity = complexity
        self.portions = portions
        self.time = time
        self.proteins = proteins
        self.fats = fats
        self.carbohydrates = carbohydrates
        self.kcal = kcal
        self.status = status
        self.description = description
        self.localization = localization
        self.category = category
        self.steps = steps
        self.likes = likes
        self.isLiked = isLiked
        self.tags = tags
        self.products = products
        self.comments = comments
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

}

extension RecipeModel: Hashable, Equatable {
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(owner.id)
        hasher.combine(owner.username)
        hasher.combine(title)
        hasher.combine(imageUrl)
        hasher.combine(complexity)
        hasher.combine(portions)
        hasher.combine(time)
        hasher.combine(proteins)
        hasher.combine(fats)
        hasher.combine(carbohydrates)
        hasher.combine(kcal)
        hasher.combine(status)
        hasher.combine(localization)
        hasher.combine(category)
        hasher.combine(steps)
        hasher.combine(likes)
        hasher.combine(isLiked)
        hasher.combine(tags)
//        hasher.combine(products)
        hasher.combine(createdAt)
        hasher.combine(updatedAt)
    }
                                                                    
    public static func == (lhs: RecipeModel, rhs: RecipeModel) -> Bool {
        return lhs.id == rhs.id
            && lhs.owner.id == rhs.owner.id
            && lhs.owner.username == rhs.owner.username
            && lhs.title == rhs.title
            && lhs.imageUrl == rhs.imageUrl
            && lhs.complexity == rhs.complexity
            && lhs.portions == rhs.portions
            && lhs.time == rhs.time
            && lhs.proteins == rhs.proteins
            && lhs.fats == rhs.fats
            && lhs.carbohydrates == rhs.carbohydrates
            && lhs.kcal == rhs.kcal
            && lhs.status == rhs.status
            && lhs.localization == rhs.localization
            && lhs.category == rhs.category
            && lhs.steps == rhs.steps
            && lhs.likes == rhs.likes
            && lhs.isLiked == rhs.isLiked
            && lhs.tags == rhs.tags
//            && lhs.products = rhs.products
            && lhs.createdAt == rhs.createdAt
            && lhs.updatedAt == rhs.updatedAt
    }
    
}
