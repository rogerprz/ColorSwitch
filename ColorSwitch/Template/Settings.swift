//
//  Settings.swift
//  ColorSwitch
//
//  Created by Roger Perez on 8/11/20.
//  Copyright © 2020 CodeRoger. All rights reserved.
//

import SpriteKit

enum PhysicsCategories {
    static let none: UInt32 = 0
    static let ballCategory: UInt32 = 0x1           // 01
    static let switchCategory: UInt32 = 0x1 << 1    // 10
}
