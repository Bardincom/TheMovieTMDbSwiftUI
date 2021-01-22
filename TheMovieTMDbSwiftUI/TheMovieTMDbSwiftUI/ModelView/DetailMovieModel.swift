//
//  DetailMovieModel.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 22.01.2021.
//

import Foundation

class DetailMovieModel: ObservableObject {

    private var networkService = NetworkService()
    @Published var movieInfo: MovieInfo

    init(movieInfo: MovieInfo) {
        self.movieInfo = movieInfo
        fetchDetailSelectMovie(withId: movieInfo.id)
    }

    func fetchDetailSelectMovie(withId id: Int) {
        networkService.getRequest().getDetail(idMovie: id, inLanguage: Language.ru) { result in
            switch result {
                case .success(let movieInfo):
                    self.movieInfo = movieInfo
                case .failure(let error):
                    print(error.description)
            }
        }
    }
}
