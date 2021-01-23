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

    var body: some View {
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
                    Button(action: {print("Push login button")}) {
                        HStack {
                            Text("Cancel")
                                .font(.body)
                                .bold()

                        }

                    }
                    .bordered()

                    Button(action: {
                            print("Push cancel button")}) {
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

struct LoginScreenView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LoginScreenView()
        }
    }
}
