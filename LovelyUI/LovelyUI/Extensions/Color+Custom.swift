//
//  UIColor+Custom.swift
//  LovelyUI
//
//  Created by Debora Moura on 27/06/20.
//  Copyright © 2020 Debora Moura. All rights reserved.
//

import UIKit
import SwiftUI

extension Color {
    static let accentColor = Color(red: 110/255.0, green: 106/255.0, blue: 220/255.0)
    static let base = Color(red: 246/255.0, green: 246/255.0, blue: 250/255.0)
    static let black = Color(red: 48/255.0, green: 51/255.0, blue: 66/255.0)
    static let cyan = Color(red: 147/255.0, green: 216/255.0, blue: 240/255.0)
    static let lightGray = Color(white: 200/255.0)
    static let darkGray = Color(white: 156/255.0)
    static let white = Color(white: 255/255.0)
}

extension UIColor {
    static let accentColor = UIColor(red: 110/255.0, green: 106/255.0, blue: 220/255.0, alpha: 1.0)
    static let base = UIColor(red: 246/255.0, green: 246/255.0, blue: 250/255.0, alpha: 1.0)
    static let black = UIColor(red: 48/255.0, green: 51/255.0, blue: 66/255.0, alpha: 1.0)
    static let cyan = UIColor(red: 147/255.0, green: 216/255.0, blue: 240/255.0, alpha: 1.0)
    static let lightGray = UIColor(white: 200/255.0, alpha: 1.0)
    static let darkGray = UIColor(white: 156/255.0, alpha: 1.0)
    static let white = UIColor(white: 255/255.0, alpha: 1.0)
}
