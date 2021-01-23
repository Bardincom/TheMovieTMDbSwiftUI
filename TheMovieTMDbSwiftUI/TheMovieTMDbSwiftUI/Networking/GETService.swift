//
//  GETService.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 20.01.2021.
//

import Foundation

protocol Getable {
    func getPopular(inLanguage language: String, completionHandler: @escaping ResultBlock<Movie>)
    func getDetail(idMovie id: Int, inLanguage language: String, completionHandler: @escaping ResultBlock<Detail>)
}

class GETService: Getable {

    private let urlService: URLServicing
    private let requestService: RequestServicing
    private let dataProvider: DataTaskServicing

    init(urlService: URLServicing = URLService(),
         requestService: RequestServicing = RequestService(),
         dataProvider: DataTaskServicing = DataTaskService()) {
        self.urlService = urlService
        self.requestService = requestService
        self.dataProvider = dataProvider
    }

    func getPopular(inLanguage language: String,
                    completionHandler: @escaping ResultBlock<Movie>) {

        guard let url = urlService.preparationURL(Path.versionAPI+Path.movie+Path.popular, language) else { return }
        let request = requestService.preparationRequest(url)
        dataProvider.dataTask(with: request, completionHandler: completionHandler)
    }

    func getDetail(idMovie id: Int,
                   inLanguage language: String,
                   completionHandler: @escaping ResultBlock<Detail>) {
        guard let url = urlService.preparationURL(Path.versionAPI+Path.movie+"\(id)", language) else { return }
        let request = requestService.preparationRequest(url)
        dataProvider.dataTask(with: request, completionHandler: completionHandler)
    }

}
