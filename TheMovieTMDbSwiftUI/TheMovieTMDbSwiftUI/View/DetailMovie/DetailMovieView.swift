//
//  DetailMovieView.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 22.01.2021.
//

import SwiftUI
import Kingfisher

struct DetailMovieView: View {

    @Environment(\.presentationMode) var presentation
    @ObservedObject var detailMovieModel: DetailMovieModel

    var body: some View {
        VStack {
            ZStack(alignment: .bottomLeading) {
                KFImage(URL(string: Component.image+detailMovieModel.posterImage))
                    .resizable()
                    .scaledToFit()
                VStack(alignment: .leading) {
                    Text(detailMovieModel.title)
                        .fontWeight(.medium)
                        .modifier(TitleText(font: Font.title))
                    Text(detailMovieModel.voteAverage)
                        .fontWeight(.regular)
                        .modifier(TitleText(font: Font.title3))
                }
                .padding(.leading)
            }
            ScrollView {
                Text(detailMovieModel.overview)
                    .fontWeight(.medium)
                    .modifier(OverviewText())
            }

            Spacer()
        }
        .navigationBarTitle(Title.movieDetail, displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
                                Button(action: {
                                        self.presentation.wrappedValue.dismiss()},
                                       label: {
                                        HStack {

                                            Image(systemName: ImageButton.back)
                                            Text(TextButton.back)
                                                .font(.title3)
                                        }
                                       }),
                            trailing:
                                Button(action: { print("Save") },
                                       label: {
                                        Image(systemName: ImageButton.save)
                                       }))
    }
}

struct DetailMovieView_Previews: PreviewProvider {
    static var previews: some View {
        DetailMovieView(detailMovieModel: DetailMovieModel(movieID: 464052))
    }
}
