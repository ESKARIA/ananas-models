//
//  RemoteConfigModel.swift
//  AnanasModels
//
//  Created by Emil Karimov on 20.06.2022
//  Copyright © 2022 Emil Karimov. All rights reserved.
//

import Foundation

open class RemoteConfigModel: Codable {

    public let version: String
    public let key: String
    public let value: String

    public init(version: String, key: String, value: String) {
        self.version = version
        self.key = key
        self.value = value
    }

}
