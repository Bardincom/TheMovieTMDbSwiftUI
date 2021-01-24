//
//  ActivityIndicator.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 24.01.2021.
//

import Swift
import SwiftUI

struct ActivityIndicator: UIViewRepresentable {

    @Binding var shouldAnimate: Bool

    func makeUIView(context: Context) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: .large)
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        shouldAnimate ? uiView.startAnimating() : uiView.stopAnimating()
    }


}
