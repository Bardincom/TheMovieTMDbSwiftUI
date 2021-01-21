//
//  TestView.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 21.01.2021.
//

import SwiftUI
import Kingfisher

struct MostPopularView: View {
    @ObservedObject var popularMovieModel = PopularMovieModel()

    let layout = [
        GridItem(.adaptive(minimum: 150))
    ]

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: layout, spacing: 10) {
                    ForEach.init(popularMovieModel.popularMovies, id: \.self) { movie in
                        VStack {
                            KFImage(URL(string: Component.image+movie.posterPath))
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(10)
                        }
                    }
                }
                .padding(.horizontal)
            }
            .navigationTitle("Most Popular")
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MostPopularView()
        }
    }
}
