//
//  RecipeCommentModel.swift
//  AnanasModels
//
//  Created by Emil Karimov on 21.06.2022
//  Copyright © 2022 Emil Karimov. All rights reserved.
//

import Foundation

open class RecipeCommentModel: Identifiable, Codable {
    
    public let id: String
    public let text: String
    public let user: OwnerSmartModel
    public let comments: [RecipeCommentModel]
    public let createdAt: Date
    public let updatedAt: Date?
    
    public init(id: ID, text: String, user: OwnerSmartModel, comments: [RecipeCommentModel], createdAt: Date, updatedAt: Date?) {
        self.id = id
        self.text = text
        self.user = user
        self.comments = comments
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

}

extension RecipeCommentModel: Hashable, Equatable {
    
    public static func == (lhs: RecipeCommentModel, rhs: RecipeCommentModel) -> Bool {
        return lhs.id == rhs.id
            && lhs.text == rhs.text
            && lhs.user.id == rhs.user.id
            && lhs.user.username == rhs.user.username
            && lhs.user.avatarUrl == rhs.user.avatarUrl
            && lhs.comments == rhs.comments
            && lhs.createdAt == rhs.createdAt
            && lhs.updatedAt == rhs.updatedAt
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(text)
        hasher.combine(user.id)
        hasher.combine(user.username)
        hasher.combine(user.avatarUrl)
        hasher.combine(comments)
        hasher.combine(createdAt)
        hasher.combine(updatedAt)
    }
}
