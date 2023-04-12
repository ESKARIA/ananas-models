//
//  MemberModel.swift
//  AnanasModels
//
//  Created by Emil Karimov on 28.03.2022.
//  Copyright © 2022 Emil Karimov. All rights reserved.
//

import Foundation

public final class MemberModel: Identifiable, Codable {

    public let id: String
    public let username: String?
    public let email: String?
    public let avatar_url: String?
    public let emojieId: Int?
    public let isYou: Bool

    public var name: String? {
        return username ?? email
    }

    public init(id: ID, username: String?, email: String?, avatar_url: String?, emojieId: Int?, isYou: Bool) {
        self.id = id
        self.username = username
        self.email = email
        self.avatar_url = avatar_url
        self.emojieId = emojieId
        self.isYou = isYou
    }

}

extension MemberModel: Hashable, Equatable {
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(username)
        hasher.combine(email)
        hasher.combine(avatar_url)
        hasher.combine(emojieId)
        hasher.combine(isYou)
    }
    
    public static func == (lhs: MemberModel, rhs: MemberModel) -> Bool {
        return lhs.id == rhs.id
        && lhs.username == rhs.username
        && lhs.email == rhs.email
        && lhs.avatar_url == rhs.avatar_url
        && lhs.emojieId == rhs.emojieId
        && lhs.isYou == rhs.isYou
        
    }
    
}
