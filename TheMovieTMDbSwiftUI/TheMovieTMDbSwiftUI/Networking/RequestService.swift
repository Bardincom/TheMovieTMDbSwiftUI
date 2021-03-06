//
//  RequestService.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 20.01.2021.
//

import Foundation

protocol RequestServicing {
    func preparationRequest(_ url: URL, _ httpMethod: String) -> URLRequest
}

final class RequestService: RequestServicing {

    var defaultHeaders =
        [
            "Authorization": "Bearer " + APIKey.key,
            "Content-Type": "application/json",
        ]

    func preparationRequest(_ url: URL, _ httpMethod: String) -> URLRequest {
        var request = URLRequest(url: url)
        request.httpMethod = httpMethod
        request.allHTTPHeaderFields = defaultHeaders
        return request
    }
}
