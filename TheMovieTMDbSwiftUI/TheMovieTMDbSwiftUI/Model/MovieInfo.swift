//
//  MovieInfo.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 20.01.2021.
//

import Foundation

struct MovieInfo: Codable, Hashable {
    var id: Int
    var posterPath: String?
    var overview: String
    var title: String

    enum CodingKeys: String, CodingKey {
        case id, overview, title
        case posterPath = "poster_path"
    }
}
