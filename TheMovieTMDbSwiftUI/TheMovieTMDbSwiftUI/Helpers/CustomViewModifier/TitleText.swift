//
//  TitleText.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 23.01.2021.
//

import SwiftUI

struct TitleText: ViewModifier {
    @State var font: Font
    func body(content: Content) -> some View {
        content
            .font(font)
            .foregroundColor(.white)
            .minimumScaleFactor(0.5)
            .scaledToFit()
    }
}
