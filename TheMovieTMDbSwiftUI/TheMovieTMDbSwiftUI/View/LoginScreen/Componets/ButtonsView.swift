//
//  ButtonsView.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 24.01.2021.
//

import SwiftUI

struct ButtonsView: View {
    var loginViewModel: LoginViewModel
    var userСredential: UserСredential

    var body: some View {
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
                    loginViewModel.authorizationUser(credential: userСredential)}) {
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
