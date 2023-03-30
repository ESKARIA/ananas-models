//
//  CategoryModel.swift
//  AnanasModels
//
//  Created by Emil Karimov on 28.03.2022.
//  Copyright © 2022 Emil Karimov. All rights reserved.
//

import Foundation

open class CategoryModel: Identifiable, Codable {

    public let id: String
    public let title: String
    public let color: ColorModel
    public let sortId: Int
    public let isOwner: Bool
    public let iconId: Int

    public init(id: ID, title: String, color: ColorModel, sortId: Int, isOwner: Bool, iconId: Int) {
        self.id = id
        self.title = title
        self.color = color
        self.sortId = sortId
        self.isOwner = isOwner
        self.iconId = iconId
    }

}

extension CategoryModel: Hashable, Equatable {
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(title)
        hasher.combine(color)
        hasher.combine(sortId)
        hasher.combine(isOwner)
        hasher.combine(iconId)
    }
    
    public static func == (lhs: CategoryModel, rhs: CategoryModel) -> Bool {
        return lhs.id == rhs.id
            && lhs.title == rhs.title
            && lhs.color == rhs.color
            && lhs.sortId == rhs.sortId
            && lhs.isOwner == rhs.isOwner
            && lhs.iconId == rhs.iconId
    }
    
}
