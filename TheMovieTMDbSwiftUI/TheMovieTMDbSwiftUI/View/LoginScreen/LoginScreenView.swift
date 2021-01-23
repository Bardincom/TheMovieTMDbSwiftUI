//
//  LoginScreenView.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 23.01.2021.
//

import SwiftUI

struct LoginScreenView: View {

    @State private var name = ""
    @State private var password = ""
    @State private var isLogin = false

    @ViewBuilder
    var body: some View {
        if isLogin {
            PopularMovieView()
        } else {
            ZStack {
                LoginScreenBackgroundImage()
                VStack(spacing: 20) {
                    VStack {
                        TextField("Enter your login", text: $name)
                            .bordered()
                            .padding(.horizontal)
                            .keyboardType(/*@START_MENU_TOKEN@*/.emailAddress/*@END_MENU_TOKEN@*/)
                        TextField("Enter your password", text: $password)
                            .bordered()
                            .padding(.horizontal)
                    }

                    HStack(spacing: 30) {
                        Button(action: {
                            print("Push cancel button")
                        }) {
                            HStack {
                                Text("Cancel")
                                    .font(.body)
                                    .bold()

                            }

                        }
                        .bordered()

                        Button(action: {
                                isLogin = true
                                print("Push login button")}) {
                            HStack {
                                Image(systemName: "checkmark")
                                    .resizable()
                                    .frame(width: 16, height: 16, alignment: .center)
                                Text("Login")
                                    .font(.body)
                                    .bold()
                            }
                        }
                        .bordered()
                    }
                }
            }
        }
    }
}

struct LoginScreenView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LoginScreenView()
        }
    }
}
