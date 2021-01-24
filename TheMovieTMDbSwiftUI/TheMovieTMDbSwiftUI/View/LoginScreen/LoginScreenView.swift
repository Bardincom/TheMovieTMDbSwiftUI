//
//  LoginScreenView.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 23.01.2021.
//

import SwiftUI

struct LoginScreenView: View {

    @ObservedObject var loginViewModel: LoginViewModel
    @State private var credential = UserСredential()
    @State private var shouldAnimate: Bool = false

    var body: some View {
        if loginViewModel.isValidate {
            PopularMovieView()
        } else {
            ZStack {
                LoginScreenBackgroundImage()
                VStack(spacing: 20) {
                    ZStack {
                        VStack {
                            TextField(TextLabel.enterLogin, text: $credential.username)
                                .bordered()
                                .padding(.horizontal)
                            SecureField(TextLabel.enterPassword, text: $credential.password)
                                .bordered()
                                .padding(.horizontal)
                        }
                        ActivityIndicator(shouldAnimate: $shouldAnimate)
                    }

                    ButtonsView(loginViewModel: loginViewModel,
                                userСredential: credential, shouldAnimate: $shouldAnimate)
                }
            }
        }
    }
}

struct LoginScreenView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LoginScreenView(loginViewModel: LoginViewModel())
        }
    }
}
