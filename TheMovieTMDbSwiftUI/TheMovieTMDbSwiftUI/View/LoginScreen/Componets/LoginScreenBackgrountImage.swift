//
//  LoginScreenBackgrountImage.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 23.01.2021.
//

import SwiftUI

struct LoginScreenBackgroundImage: View {
    var body: some View {
        Image(AssetsImage.loginScreenBackgroundImage)
            .resizable()
            .aspectRatio(1/1, contentMode: .fit)
            .saturation(0.5)
            .blur(radius: 5)
            .opacity(0.3)
    }
}

struct LoginScreenBackgroundImage_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreenBackgroundImage()
    }
}

struct LoginScreenBackgroundImage2: View {
    var body: some View {
        Image(AssetsImage.loginScreenBackgroundImage)
            .resizable()
            .aspectRatio(1/1, contentMode: .fit)
            .saturation(0.5)
    }
}

struct LoginScreenBackgroundImage2_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreenBackgroundImage2()
    }
}
