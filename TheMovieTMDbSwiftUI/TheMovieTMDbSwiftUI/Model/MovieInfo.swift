//
//  MovieInfo.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 20.01.2021.
//

import Foundation

struct MovieInfo: Codable {
    var id: Int
    var backdropPath: String
    var posterPath: String
    var overview: String
    var title: String

    enum CodingKeys: String, CodingKey {
        case id, overview, title
        case backdropPath = "backdrop_path"
        case posterPath = "poster_path"
    }
}
