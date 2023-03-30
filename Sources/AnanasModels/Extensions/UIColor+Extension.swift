//
//  UIColor+Extension.swift
//  AnanasModels
//
//  Created by Emil Karimov on 30.03.2023.
//  Copyright © 2023 Emil Karimov. All rights reserved.
//

import Foundation
#if canImport(UIKit)
import UIKit

public extension UIColor {

    static func make(from hex: String) -> UIColor {

        var cString: String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }

        if ((cString.count) != 6) {
            return UIColor.gray
        }

        var rgbValue:UInt64 = 0

        Scanner(string: cString).scanHexInt64(&rgbValue)

        return UIColor(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
                       green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
                       blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
                       alpha: CGFloat(1.0)
        )
    }

}
#endif
