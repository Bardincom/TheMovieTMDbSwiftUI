//
//  URLComponentsService.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 20.01.2021.
//

import Foundation

protocol URLComponenting {
    func preparationURLComponents(_ path: String,_ language: String?) -> URLComponents?
}

final class URLComponentsService: URLComponenting {

    func preparationURLComponents(_ path: String,_ language: String?) -> URLComponents? {
        var urlComponents = URLComponents()
        urlComponents.scheme = Component.scheme
        urlComponents.host = Component.host
        urlComponents.path = path
        guard let value = language else { return urlComponents }
        urlComponents.queryItems = [
            URLQueryItem(name: QueryItem.name, value: "\(value)"),
        ]

        return urlComponents
    }
}
