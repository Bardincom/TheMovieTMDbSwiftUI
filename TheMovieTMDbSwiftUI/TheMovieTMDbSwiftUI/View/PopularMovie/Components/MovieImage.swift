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
            KFImage(URL(string: Component.image+movieInfo.posterPath))
                .resizable()
                .scaledToFit()
                .overlay(ImageOverlay(movieInfo: movieInfo), alignment: .bottom)
                .cornerRadius(10)
        }
    }
}
