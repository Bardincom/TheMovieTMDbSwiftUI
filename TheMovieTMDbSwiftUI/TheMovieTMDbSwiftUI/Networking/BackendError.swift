//
//  BackendError.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 20.01.2021.
//

import Foundation

enum BackendError: Error, CustomStringConvertible {
    case unauthorized
    case notFound
    case otherError

    var description: String {
        switch self {
            case .unauthorized: return "Invalid API key: You must be granted a valid key."
            case .notFound: return "The resource you requested could not be found."
            case .otherError: return "Check your internet connection"
        }
    }
}
