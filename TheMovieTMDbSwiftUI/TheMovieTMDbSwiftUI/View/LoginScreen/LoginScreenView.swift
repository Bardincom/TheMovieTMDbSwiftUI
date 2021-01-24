//
//  LoginScreenView.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 23.01.2021.
//

import SwiftUI

struct LoginScreenView: View {

    @ObservedObject var loginViewModel: LoginViewModel
    @State private var credential = UserСredential(username: "", password: "")

    var body: some View {
        if loginViewModel.isValidate {
            PopularMovieView()
        } else {
            ZStack {
                LoginScreenBackgroundImage()
                VStack(spacing: 20) {
                    VStack {
                        TextField("Enter your login", text: $credential.username)
                            .bordered()
                            .padding(.horizontal)
                        SecureField("Enter your password", text: $credential.password)
                            .bordered()
                            .padding(.horizontal)
                    }

                    ButtonsView(loginViewModel: loginViewModel, userСredential: credential)
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
