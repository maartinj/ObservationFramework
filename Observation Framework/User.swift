//
//  User.swift
//  Observation Framework
//
//  Created by Marcin Jędrzejak on 21/08/2023.
//

import Foundation
import Observation

@Observable
class User {
    let name: String
    var number: Int
    var isHappy: Bool
    
    init(name: String, number: Int, isHappy: Bool = true) {
        self.name = name
        self.number = number
        self.isHappy = isHappy
    }
}
