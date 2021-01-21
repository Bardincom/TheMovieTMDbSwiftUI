//
//  RequestService.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 20.01.2021.
//

import Foundation

protocol RequestServicing {
    func preparationRequest(_ url: URL) -> URLRequest
}

final class RequestService: RequestServicing {

    var defaultHeaders =
        [
            "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJkOGMwNzEyNDVhN2U3YzE2MjAyNzI5OTk2M2U2NDZmZCIsInN1YiI6IjYwMDgyNTRhM2Y4ZWRlMDA0MDVlMTU3YyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.pLqWDPSHNo3n3QIztUk60Hxn7ijNTOlqlxPTQVsmEGY",
            "Content-Type": "application/json",
        ]

    func preparationRequest(_ url: URL) -> URLRequest {
        var request = URLRequest(url: url)
        request.allHTTPHeaderFields = defaultHeaders
        return request
    }
}
