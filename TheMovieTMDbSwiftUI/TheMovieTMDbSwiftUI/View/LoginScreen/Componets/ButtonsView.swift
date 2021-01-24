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

    @Binding var shouldAnimate: Bool

    @State private var error = false
    @State private var errorMessage = ""

    var body: some View {
            Button(action: {

                    self.shouldAnimate = !self.shouldAnimate
                loginViewModel.authorizationUser(credential: userСredential) { result in
                    switch result {
                        case .success(_):
                            self.shouldAnimate = !self.shouldAnimate
                        case .failure(let error):
                            self.error = true
                            self.shouldAnimate = !self.shouldAnimate
                            self.errorMessage = error.description
                    }
                }

            }) {
                HStack {
                    Image(systemName: ImageButton.checkmark)
                        .resizable()
                        .frame(width: 16, height: 16, alignment: .center)
                    Text(TextButton.login)
                        .font(.body)
                        .bold()
                }
            }
            .alert(isPresented: $error, content: {
                Alert(title: Text(errorMessage))
            })
            .bordered()
    }
}
