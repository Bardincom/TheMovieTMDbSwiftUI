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
                    Text(TextButton.cancel)
                        .font(.body)
                        .bold()
                }
            }
            .bordered()

            Button(action: {
                    loginViewModel.authorizationUser(credential: userСredential)}) {
                HStack {
                    Image(systemName: ImageButton.checkmark)
                        .resizable()
                        .frame(width: 16, height: 16, alignment: .center)
                    Text(TextButton.login)
                        .font(.body)
                        .bold()
                }
            }
            .bordered()
        }
    }
}
