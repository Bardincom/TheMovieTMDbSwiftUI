//
//  Detail.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 23.01.2021.
//

import Foundation

struct Detail: Codable, Hashable {
    var id: Int
    var backdropPath: String
    var overview: String?
    var title: String
    var voteAverage: Double
    var runtime: Int
    var genres: [Genre]

    enum CodingKeys: String, CodingKey {
        case genres, id, overview, title, runtime
        case voteAverage = "vote_average"
        case backdropPath = "backdrop_path"
    }
}
