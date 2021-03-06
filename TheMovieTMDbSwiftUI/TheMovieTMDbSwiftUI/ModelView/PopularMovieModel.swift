//
//  PopularMovieModel.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 21.01.2021.
//

import Foundation

class PopularMovieModel: ObservableObject {
    private var networkService = NetworkService()

    @Published var popularMovies = [MovieInfo]()

    init() {
        fetchPopularMovie()
    }

    private func fetchPopularMovie() {
        networkService.getRequest().getPopular(inLanguage: Language.ru) { [weak self] result in
            switch result {
                case .success(let movie):
                    DispatchQueue.main.async {
                        self?.popularMovies = movie.movieInfo
                    }
                case .failure(let error):
                    print(error.description)
            }
        }
    }
}
