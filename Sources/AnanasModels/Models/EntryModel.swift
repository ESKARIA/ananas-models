//
//  EntryModel.swift
//  AnanasModels
//
//  Created by Emil Karimov on 28.03.2022.
//  Copyright © 2022 Emil Karimov. All rights reserved.
//

import Foundation

open class EntryModel: Identifiable, Codable {

    public let id: String
    public let listId: String
    public let item: ItemModel
    public let isImportant: Bool
    public let isPurchased: Bool
    public let count: Decimal
    public var description: String?

    public init(id: ID, listId: ListModel.ID, item: ItemModel, isImportant: Bool, isPurchased: Bool, count: Decimal, description: String? = nil) {
        self.id = id
        self.listId = listId
        self.item = item
        self.isImportant = isImportant
        self.isPurchased = isPurchased
        self.count = count
        self.description = description
    }

}

extension EntryModel: Hashable, Equatable {
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(listId)
        hasher.combine(item)
        hasher.combine(isImportant)
        hasher.combine(isPurchased)
        hasher.combine(count)
        hasher.combine(description)
    }
    
    public static func == (lhs: EntryModel, rhs: EntryModel) -> Bool {
        return lhs.id == rhs.id
            && lhs.listId == rhs.listId
            && lhs.item == rhs.item
            && lhs.isImportant == rhs.isImportant
            && lhs.isPurchased == rhs.isPurchased
            && lhs.count == rhs.count
            && lhs.description == rhs.description
    }
    
}
