//
//  PageModel.swift
//  AnanasModels
//
//  Created by Emil Karimov on 17.05.2022
//  Copyright © 2022 Emil Karimov. All rights reserved.
//

import Foundation

public final class PageModel: Codable {

    public let page: Int
    public let per: Int
    public let total: Int

    public init(page: Int, per: Int, total: Int) {
        self.page = page
        self.per = per
        self.total = total
    }

}

extension PageModel: Hashable, Equatable {
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(page)
        hasher.combine(per)
        hasher.combine(total)
    }
    
    public static func == (lhs: PageModel, rhs: PageModel) -> Bool {
        return lhs.page == rhs.page
            && lhs.per == rhs.per
            && lhs.total == rhs.total
    }
    
}
