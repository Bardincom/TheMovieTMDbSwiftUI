//
//  LoginViewModel.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 23.01.2021.
//

import Foundation
import SwiftUI

class LoginViewModel: ObservableObject {
    private var networkService = NetworkService()
    private var authorizationService = AuthorizationService()
    @Published var isValidate = false

    func authorizationUser(credential: UserСredential, completionHandler: @escaping ResultBlock<Validate>) {
        networkService.getRequest().getToken { result in
            switch result {
                case .success(let token):
                    self.authorizationService.signIn(credential: credential, token: token.requestToken) { [weak self] result in
                        switch result {
                            case .success(let validate):
                                DispatchQueue.main.async {
                                    self?.isValidate = validate.success
                                    completionHandler(result)
                                }
                            case .failure(_):
                                completionHandler(result)
                        }       
                    }
                case .failure(let error):
                    print(error.description)
            }
        }
    }
}
