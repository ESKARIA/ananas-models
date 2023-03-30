//
//  ProfileModel.swift
//  AnanasModels
//
//  Created by Emil Karimov on 26.10.2022.
//  Copyright © 2022 Emil Karimov. All rights reserved.
//

import Foundation

open class ProfileModel: Codable {

    public var profile: UserModel
    public var lists: [ListModel]
    public var products: [ProductModel]
    public var colors: [ColorModel]

    public init(profile: UserModel, lists: [ListModel], products: [ProductModel], colors: [ColorModel]) {
        self.profile = profile
        self.lists = lists
        self.products = products
        self.colors = colors
    }

}
