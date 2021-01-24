//
//  URLService.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 20.01.2021.
//

import Foundation

protocol URLServicing {
    func preparationURL(_ path: String, _ itemValue: String?) -> URL?
}

final class URLService: URLServicing {

    private let preparationURLComponents: URLComponenting

    init(preparationURLComponents: URLComponenting = URLComponentsService()) {
        self.preparationURLComponents = preparationURLComponents
    }

    func preparationURL(_ path: String, _ itemValue: String?) -> URL? {
        guard let url = preparationURLComponents.preparationURLComponents(path, itemValue)?.url else { return nil }

        return url
    }
}
