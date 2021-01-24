//
//  Token.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 23.01.2021.
//

import Foundation

struct Token: Codable, Hashable {
    var success: Bool
    var requestToken: String

    enum CodingKeys: String, CodingKey {
        case success
        case requestToken = "request_token"
    }
}
