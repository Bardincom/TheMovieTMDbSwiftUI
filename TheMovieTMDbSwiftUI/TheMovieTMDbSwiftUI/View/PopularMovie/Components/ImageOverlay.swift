//
//  ImageOverlay.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 22.01.2021.
//

import SwiftUI

struct ImageOverlay: View {
    var movieInfo: MovieInfo

    var body: some View {
        ZStack {
            Text(movieInfo.title)
                .font(.title2)
                .foregroundColor(.white)
                .scaledToFit()
                .minimumScaleFactor(0.5)

        }
        .background(Color.black)
        .opacity(0.8)
    }
}

