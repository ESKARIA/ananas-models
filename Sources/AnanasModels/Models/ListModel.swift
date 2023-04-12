//
//  ListModel.swift
//  AnanasModels
//
//  Created by Emil Karimov on 28.03.2022.
//  Copyright © 2022 Emil Karimov. All rights reserved.
//

import Foundation

public final class ListModel: Identifiable, Codable {

    public let id: String
    public let title: String
    public let members: [MemberModel]
    public let entries: [EntryModel]
    public let owner: MemberModel
    public let isOwner: Bool
    public let sortId: Int
    public let backgroundId: Int
    public let createdAt: Date
    public let updatedAt: Date

    public init(id: ListModel.ID,
                title: String,
                members: [MemberModel],
                entries: [EntryModel],
                owner: MemberModel,
                isOwner: Bool,
                sortId: Int,
                backgroundId: Int,
                createdAt: Date,
                updatedAt: Date) {
        self.id = id
        self.title = title
        self.members = members
        self.entries = entries
        self.owner = owner
        self.isOwner = isOwner
        self.sortId = sortId
        self.backgroundId = backgroundId
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

}

extension ListModel: Hashable, Equatable {
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(title)
        hasher.combine(members)
        hasher.combine(entries)
        hasher.combine(owner)
        hasher.combine(isOwner)
        hasher.combine(sortId)
        hasher.combine(backgroundId)
        hasher.combine(createdAt)
        hasher.combine(updatedAt)
    }
    
    public static func == (lhs: ListModel, rhs: ListModel) -> Bool {
        return lhs.id == rhs.id
            && lhs.title == rhs.title
            && lhs.members == rhs.members
            && lhs.entries == rhs.entries
            && lhs.owner == rhs.owner
            && lhs.isOwner == rhs.isOwner
            && lhs.sortId == rhs.sortId
            && lhs.backgroundId == rhs.backgroundId
            && lhs.createdAt == rhs.createdAt
            && lhs.updatedAt == rhs.updatedAt
    }
    
}
