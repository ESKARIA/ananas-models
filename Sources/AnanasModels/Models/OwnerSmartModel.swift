//
//  OwnerSmartModel.swift
//  AnanasModels
//
//  Created by Emil Karimov on 28.05.2022.
//  Copyright © 2022 Emil Karimov. All rights reserved.
//

import Foundation

public final class OwnerSmartModel: Identifiable, Codable {

    public let id: String
    public let username: String
    public let avatarUrl: String?

    public init(id: OwnerSmartModel.ID, username: String, avatarUrl: String?) {
        self.id = id
        self.username = username
        self.avatarUrl = avatarUrl
    }

}
