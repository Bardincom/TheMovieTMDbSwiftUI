//
//  MovieImage.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 22.01.2021.
//

import SwiftUI
import Kingfisher

struct MovieImage: View {

    let movieInfo: MovieInfo

    var body: some View {
        VStack {
            if let posterImage = movieInfo.posterPath {
            KFImage(URL(string: Component.image+posterImage))
                .resizable()
                .scaledToFit()
                .overlay(ImageOverlay(movieInfo: movieInfo), alignment: .bottom)
                .cornerRadius(10)
            }
        }
    }
}
