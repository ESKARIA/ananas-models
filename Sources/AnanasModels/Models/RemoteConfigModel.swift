//
//  RemoteConfigModel.swift
//  AnanasModels
//
//  Created by Emil Karimov on 20.06.2022
//  Copyright © 2022 Emil Karimov. All rights reserved.
//

import Foundation

public final class RemoteConfigModel: Codable {

    public let key: String
    public let value: String

    public init(key: String, value: String) {
        self.key = key
        self.value = value
    }

}
