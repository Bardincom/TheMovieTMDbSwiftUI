//
//  Authorization.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 23.01.2021.
//

import Foundation

struct Authorization: Codable, Hashable {
    var login: String
    var password: String
    var token: String
}
