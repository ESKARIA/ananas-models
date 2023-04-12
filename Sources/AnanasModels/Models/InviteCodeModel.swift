//
//  InviteCodeModel.swift
//  AnanasModels
//
//  Created by Emil Karimov on 01.05.2022
//  Copyright © 2022 Emil Karimov. All rights reserved.
//

import Foundation

public final class InviteCodeModel: Codable {
    
    public let code: String

    public init(code: String) {
        self.code = code
    }
    
}
