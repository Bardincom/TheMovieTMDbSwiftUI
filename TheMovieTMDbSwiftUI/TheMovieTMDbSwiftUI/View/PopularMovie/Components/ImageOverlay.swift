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
                .font(.headline)
                .foregroundColor(.white)
        }
        .background(Color.black)
        .opacity(0.8)
    }
}

