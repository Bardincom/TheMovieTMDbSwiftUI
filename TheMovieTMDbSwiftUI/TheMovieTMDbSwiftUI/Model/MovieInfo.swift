//
//  MovieInfo.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 20.01.2021.
//

import Foundation

struct MovieInfo: Codable {
    var id: Int
    var backdrop_path: String
    var poster_path: String
    var overview: String
    var title: String
}
