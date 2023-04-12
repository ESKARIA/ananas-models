//
//  MessageModel.swift
//  AnanasModels
//
//  Created by Emil Karimov on 23.03.2023
//  Copyright © 2023 Emil Karimov. All rights reserved.
//

import Foundation

public typealias Messages = [MessageModel]

// MARK: - MessageModel
public final class MessageModel: Identifiable, Codable {

    public let id: String
    public let channel: UserSmart
    public let user: UserSmart
    public let message: String
    public let createdAt: String

    public init(id: ID, channel: UserSmart, user: UserSmart, message: String, createdAt: String) {
        self.id = id
        self.channel = channel
        self.user = user
        self.message = message
        self.createdAt = createdAt
    }

}

// MARK: - UserSmart
public final class UserSmart: Identifiable, Codable {

    public let id: String
    public let username: String
    public let emojieId: Int
    public let isYou: Bool

    public init(id: ID, username: String, emojieId: Int, isYou: Bool) {
        self.id = id
        self.username = username
        self.emojieId = emojieId
        self.isYou = isYou
    }

}

