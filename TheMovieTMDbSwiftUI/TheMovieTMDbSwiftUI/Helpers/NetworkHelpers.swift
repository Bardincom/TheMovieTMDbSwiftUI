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

enum APIKey {
    static let key = "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJkOGMwNzEyNDVhN2U3YzE2MjAyNzI5OTk2M2U2NDZmZCIsInN1YiI6IjYwMDgyNTRhM2Y4ZWRlMDA0MDVlMTU3YyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.pLqWDPSHNo3n3QIztUk60Hxn7ijNTOlqlxPTQVsmEGY"
}
