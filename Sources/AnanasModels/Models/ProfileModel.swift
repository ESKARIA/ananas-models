//
//  ProfileModel.swift
//  AnanasModels
//
//  Created by Emil Karimov on 26.10.2022.
//  Copyright © 2022 Emil Karimov. All rights reserved.
//

import Foundation

public final class ProfileModel: Codable {

    public var profile: UserModel
    public var lists: [ListModel]
    public var products: [ProductModel]
    public var colors: [ColorModel]
    public let access: Access

    public init(profile: UserModel, lists: [ListModel], products: [ProductModel], colors: [ColorModel], access: Access) {
        self.profile = profile
        self.lists = lists
        self.products = products
        self.colors = colors
        self.access = access
    }

}

public final class Access: Codable {

    public let lists: Int
    public let invites: Int
    public let items: Int
    public let categories: Int

    public init(lists: Int, invites: Int, items: Int, categories: Int) {
        self.lists = lists
        self.invites = invites
        self.items = items
        self.categories = categories
    }

}
