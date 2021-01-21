//
//  ContentView.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 20.01.2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var popularMovieModel = PopularMovieModel()

    var body: some View {
        Text("Hello, world")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
