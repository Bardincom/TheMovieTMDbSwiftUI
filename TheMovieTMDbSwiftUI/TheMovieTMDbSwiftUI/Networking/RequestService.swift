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

    func preparationRequest(_ url: URL) -> URLRequest {
        URLRequest(url: url)
    }
}
