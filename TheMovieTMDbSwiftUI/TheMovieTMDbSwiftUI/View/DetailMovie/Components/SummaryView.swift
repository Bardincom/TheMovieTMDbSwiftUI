//
//  SummaryView.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 23.01.2021.
//

import SwiftUI

struct SummaryView: View {
    var detailMovieModel: DetailMovieModel

    var body: some View {
        HStack {
            VStack {
                Text(TextLabel.duration)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(detailMovieModel.runtime)
            }
            Spacer()
            VStack {
                Text(TextLabel.genre)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(detailMovieModel.genre)
            }
            Spacer()
            VStack {
                Text(TextLabel.language)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(detailMovieModel.originalLanguage)
            }
        }
        .padding(10)
    }
}
