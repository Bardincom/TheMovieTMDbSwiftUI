//
//  PosterView.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 23.01.2021.
//

import SwiftUI
import Kingfisher


struct PosterView: View {
    var detailMovie: DetailMovieModel
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            KFImage(URL(string: Component.image+detailMovie.posterImage))
                .resizable()
                .scaledToFit()
            VStack(alignment: .leading) {
                Text(detailMovie.title)
                    .fontWeight(.medium)
                    .modifier(TitleText(font: Font.title))
                Text(detailMovie.voteAverage)
                    .fontWeight(.regular)
                    .modifier(TitleText(font: Font.title3))
            }
            .padding(.leading)
        }
    }
}
