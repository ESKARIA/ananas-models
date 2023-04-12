//
//  ColorModel.swift
//  AnanasModels
//
//  Created by Emil Karimov on 28.03.2022.
//  Copyright © 2022 Emil Karimov. All rights reserved.
//
#if canImport(UIKit)
import UIKit
#else
import Foundation
#endif

public final class ColorModel: Identifiable, Codable {

    public let id: Int
    public let hex: String

#if canImport(UIKit)
    public var uiColor: UIColor { UIColor.make(from: hex) }
    #endif

    public init(id: ColorModel.ID, hex: String) {
        self.id = id
        self.hex = hex
    }

}

extension ColorModel: Hashable, Equatable {
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(hex)
    }
    
    public static func == (lhs: ColorModel, rhs: ColorModel) -> Bool {
        return lhs.id == rhs.id
            && lhs.hex == rhs.hex
        
    }

}
