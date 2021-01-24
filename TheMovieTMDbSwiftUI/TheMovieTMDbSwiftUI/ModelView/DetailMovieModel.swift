//
//  DetailMovieModel.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 22.01.2021.
//

import Foundation

class DetailMovieModel: ObservableObject {

    private var networkService = NetworkService()
    private var detailMovie: Detail?
    @Published var movieID: Int

    var voteAverage: String {
        if let voteAverage = detailMovie?.voteAverage {

            return TextLabel.userScore + " " + String(Int(voteAverage * 10)) + " %"
        }
        return TextLabel.noVote
    }

    var title: String {
        detailMovie?.title ?? ""
    }

    var posterImage: String {
        detailMovie?.backdropPath ?? ""
    }

    var overview: String {
        detailMovie?.overview ?? ""
    }

    var runtime: String {
        if let runtime = detailMovie?.runtime {
           return TimeConvert.timeString(time: runtime)
        }
        return ""
    }

    var genre: String {
        detailMovie?.genres.first?.name ?? ""
    }

    var originalLanguage: String{
        detailMovie?.originalLanguage.uppercased() ?? ""
    }

    init(movieID: Int) {
        self.movieID = movieID
        fetchDetailSelectMovie(withId: movieID)
    }

    private func fetchDetailSelectMovie(withId id: Int) {
        networkService.getRequest().getDetail(idMovie: id, inLanguage: Language.ru) { [weak self] result in
            switch result {
                case .success(let detailMovie):
                    self?.detailMovie = detailMovie
                case .failure(let error):
                    print(error.description)
            }
        }
    }
}

