//
//  MovieInfo.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 20.01.2021.
//

import Foundation

struct MovieInfo: Codable, Hashable {
    var id: Int
    var backdropPath: String
    var posterPath: String
    var overview: String
    var title: String
    var genreID: [Int]?
    var genres: [Genre]?

    enum CodingKeys: String, CodingKey {
        case id, overview, title, genres
        case backdropPath = "backdrop_path"
        case posterPath = "poster_path"
        case genreID = "genre_ids"
    }
}
