//
//  BodyСredential.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 24.01.2021.
//

import Foundation

struct BodyСredential: Codable, Hashable {
    var username: String
    var password: String
    var requestToken: String

    enum CodingKeys: String, CodingKey {
        case username, password
        case requestToken = "request_token"
    }
}
