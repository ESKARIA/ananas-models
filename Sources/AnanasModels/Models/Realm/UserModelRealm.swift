//
//  UserModelRealm.swift
//  AnanasModels
//
//  Created by Emil Karimov on 12.09.2022.
//  Copyright © 2022 Emil Karimov. All rights reserved.
//

//import Foundation
//import RealmSwift
//import UniqueID

//let nodeID = makeNodeID(
//    userID:    currentUserID,
//    deviceID:  currentDeviceID,
//    processID: currentProcessID
//)

//final class UserModelRealm: Object {
//
//    @Persisted(primaryKey: true) var id: String = (UUID(.timeOrdered())).uuidString
//    @Persisted var email: String = ""
//    @Persisted var username: String?
//    @Persisted var localization: String = ""
//    @Persisted var premiumExpAt: Date = Date()
//    @Persisted var bonus: Int = 0
//    @Persisted var isPremium: Bool = false
//    @Persisted var registeredAt: Date?
//    @Persisted var avatar_url: String?
//
//    convenience init(from model: UserModel) {
//        self.init()
//
//        self.id = model.id
//        self.email = model.email
//        self.username = model.username
//        self.localization = model.localization
//        self.premiumExpAt = model.premiumExpAt
//        self.bonus = model.bonus
//        self.isPremium = model.isPremium
//        self.registeredAt = model.registeredAt
//        self.avatar_url = model.avatar_url
//    }
//
//    func toModel() -> UserModel {
//        return UserModel(id: id,
//                         email: email,
//                         username: username,
//                         localization: localization,
//                         premiumExpAt: premiumExpAt,
//                         bonus: bonus,
//                         isPremium: isPremium,
//                         avatar_url: avatar_url)
//    }
//
//}
