//
//  RecipeCommentPagedModel.swift
//  AnanasModels
//
//  Created by Emil Karimov on 04.07.2022
//  Copyright © 2022 Emil Karimov. All rights reserved.
//

import Foundation

public final class RecipeCommentPagedModel {

    public let comments: [RecipeCommentModel]
    public let metadata: PageModel

    public init(comments: [RecipeCommentModel], metadata: PageModel) {
        self.comments = comments
        self.metadata = metadata
    }

}

extension RecipeCommentPagedModel: Hashable, Equatable {
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(comments)
        hasher.combine(metadata)
    }
    
    public static func == (lhs: RecipeCommentPagedModel, rhs: RecipeCommentPagedModel) -> Bool {
        return lhs.comments == rhs.comments
            && lhs.metadata == rhs.metadata
    }

}
