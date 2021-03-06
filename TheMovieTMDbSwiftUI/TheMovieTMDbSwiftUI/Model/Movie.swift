//
//  Movie.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 20.01.2021.
//

import Foundation

struct Movie: Codable {
    var movieInfo: [MovieInfo]

    enum CodingKeys: String, CodingKey {
        case movieInfo = "results"
    }
}
