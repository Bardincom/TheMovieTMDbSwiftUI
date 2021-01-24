//
//  NetworkService.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 20.01.2021.
//

import Foundation

final class NetworkService {

    private let getService: Getable

    init(getService: Getable = GETService()) {
        self.getService = getService
    }

    func getRequest() -> Getable {
        return getService
    }
}
