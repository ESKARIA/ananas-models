//
//  ProductModel.swift
//  AnanasModels
//
//  Created by Emil Karimov on 06.04.2022.
//  Copyright © 2022 Emil Karimov. All rights reserved.
//

import Foundation

public final class ProductModel: Codable {

    public let category: CategoryModel
    public let items: [ItemModel]

    public init(category: CategoryModel, items: [ItemModel]) {
        self.category = category
        self.items = items
    }

}

extension ProductModel: Hashable, Equatable {
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(category)
        hasher.combine(items)
    }
    
    public static func == (lhs: ProductModel, rhs: ProductModel) -> Bool {
        return lhs.category == rhs.category
            && lhs.items == rhs.items
        
    }
    
}
