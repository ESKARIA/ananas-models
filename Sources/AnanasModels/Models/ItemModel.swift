//
//  Foundation.swift
//  AnanasModels
//
//  Created by Emil Karimov on 28.03.2022.
//  Copyright © 2022 Emil Karimov. All rights reserved.
//

import Foundation

open class ItemModel: Identifiable, Codable {

    public let id: String
    public let title: String
    public let category: CategoryModel
    public let isOwner: Bool
    public let lastAdded: Date?
    public let used: Int

    public init(id: ID, title: String, category: CategoryModel, isOwner: Bool, lastAdded: Date?, used: Int) {
        self.id = id
        self.title = title
        self.category = category
        self.isOwner = isOwner
        self.lastAdded = lastAdded
        self.used = used
    }

}

extension ItemModel: Hashable, Equatable {
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(title)
        hasher.combine(category)
        hasher.combine(isOwner)
        hasher.combine(lastAdded)
        hasher.combine(used)
    }
    
    public static func == (lhs: ItemModel, rhs: ItemModel) -> Bool {
        return lhs.id == rhs.id
        && lhs.title == rhs.title
        && lhs.category == rhs.category
        && lhs.isOwner == rhs.isOwner
        && lhs.lastAdded == rhs.lastAdded
        && lhs.used == rhs.used
    }
    
}
