//
//  LoginViewModel.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 23.01.2021.
//

import Foundation

class LoginViewModel: ObservableObject {
    private var networkService = NetworkService()
    private var authorizationService = AuthorizationService()
    @Published var isValidate = false

    func authorizationUser(credential: UserСredential) {
        networkService.getRequest().getToken { result in
            switch result {
                case .success(let token):
                    print(token.requestToken)
                    print(credential.username, credential.password)
                    self.authorizationService.signIn(credential: credential, token: token.requestToken) { [weak self] result in
                        switch result {
                            case .success(let validate):
                                DispatchQueue.main.async {
                                    self?.isValidate = validate.success
                                }
                            case .failure(let error):
                                print(error.description)
                        }       
                    }
                case .failure(let error):
                    print(error.description)
            }
        }
    }
}
