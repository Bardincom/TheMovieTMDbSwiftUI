//
//  OverviewText.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 23.01.2021.
//

import SwiftUI

struct OverviewText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title3)
            .minimumScaleFactor(0.5)
            .padding()
    }
}
