//
//  UserModel.swift
//  AnanasModels
//
//  Created by Emil Karimov on 28.03.2022.
//  Copyright © 2022 Emil Karimov. All rights reserved.
//

import Foundation

open class UserModel: Identifiable, Codable {

    public let id: String
    public let email: String
    public let username: String?
    public let localization: String
    public let premiumExpAt: Date
    public let bonus: Int
    public let isPremium: Bool
    public var registeredAt: Date?
    public var avatar_url: String?
    public var emojieId: Int?

    public var name: String? {
        return username ?? email
    }

    public init(id: ID, email: String, username: String?, localization: String, premiumExpAt: Date, bonus: Int, isPremium: Bool, registeredAt: Date? = nil, avatar_url: String?, emojieId: Int?) {
        self.id = id
        self.email = email
        self.username = username
        self.localization = localization
        self.premiumExpAt = premiumExpAt
        self.bonus = bonus
        self.isPremium = isPremium
        self.registeredAt = registeredAt
        self.avatar_url = avatar_url
        self.emojieId = emojieId
    }

}

extension UserModel: Hashable, Equatable {
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(email)
        hasher.combine(username)
        hasher.combine(localization)
        hasher.combine(premiumExpAt)
        hasher.combine(bonus)
        hasher.combine(isPremium)
        hasher.combine(registeredAt)
        hasher.combine(avatar_url)
        hasher.combine(emojieId)
    }
    
    public static func == (lhs: UserModel, rhs: UserModel) -> Bool {
        return lhs.id == rhs.id
            && lhs.email == rhs.email
            && lhs.username == rhs.username
            && lhs.localization == rhs.localization
            && lhs.premiumExpAt == rhs.premiumExpAt
            && lhs.bonus == rhs.bonus
            && lhs.isPremium == rhs.isPremium
            && lhs.registeredAt == rhs.registeredAt
            && lhs.avatar_url == rhs.avatar_url
            && lhs.emojieId == rhs.emojieId
    }
    
}
