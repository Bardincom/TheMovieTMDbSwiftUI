//
//  PopularMovieView.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 21.01.2021.
//

import SwiftUI

struct PopularMovieView: View {
    @ObservedObject var popularMovieModel = PopularMovieModel()

    let layout = [
        GridItem(.adaptive(minimum: 150))
    ]

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: layout, spacing: 10) {
                    ForEach.init(popularMovieModel.popularMovies, id: \.self) { movie in
                        NavigationLink( destination:
                                            VStack {
                                                DetailMovieView(detailMovieModel: DetailMovieModel(movieID: movie.id))
                                            }
                        ) {
                            MovieImage(movieInfo: movie)
                        }
                    }
                }
                .padding(.horizontal)
            }
            .navigationTitle(Title.mostPopular)
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PopularMovieView()
        }
    }
}


