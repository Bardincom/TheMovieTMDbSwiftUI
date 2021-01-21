//
//  NetworkHelpers.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 20.01.2021.
//

import Foundation

enum Component {
    static let scheme = "https"
    static let host = "api.themoviedb.org"
}

enum Path {
    static let versionAPI = "/3/"
    static let movie = "movie/"
    static let popular = "popular"
}

enum QueryItem {
    static let name = "language"
}

enum Language {
    static let eu = "eu"
    static let ru = "ru"
}
