//
//  RecipePagedModel.swift
//  AnanasModels
//
//  Created by Emil Karimov on 17.05.2022
//  Copyright © 2022 Emil Karimov. All rights reserved.
//

import Foundation

open class RecipePagedModel {

    public let recipes: [RecipeModel]
    public let metadata: PageModel

    public init(recipes: [RecipeModel], metadata: PageModel) {
        self.recipes = recipes
        self.metadata = metadata
    }

}

extension RecipePagedModel: Hashable, Equatable {
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(recipes)
        hasher.combine(metadata)
    }
    
    public static func == (lhs: RecipePagedModel, rhs: RecipePagedModel) -> Bool {
        return lhs.recipes == rhs.recipes
            && lhs.metadata == rhs.metadata
    }
}
