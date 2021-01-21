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
        networkService.getRequest().getPopular(inLanguage: Language.eu) { (result) in
            switch result {
                case .success(let movie):
                    self.popularMovies = movie.movieInfo
                    movie.movieInfo.forEach { print($0.title) }
                case .failure(let error):
                    print(error.description)
            }
        }
    }
}
