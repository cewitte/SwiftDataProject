//
//  User.swift
//  SwiftDataProject
//
//  Created by Carlos Eduardo Witte on 11/03/25.
//

import Foundation
import SwiftData

@Model
class User {
    var name: String
    var city: String
    var joinedDate: Date
    
    init(name: String, city: String, joinedDate: Date) {
        self.name = name
        self.city = city
        self.joinedDate = joinedDate
    }
}
