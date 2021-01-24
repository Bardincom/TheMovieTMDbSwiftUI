//
//  AuthorizationService.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 23.01.2021.
//

import Foundation

protocol Authorizating {
    func signIn(credential: UserСredential, token: String, completionHandler: @escaping ResultBlock<Validate>)
}

class AuthorizationService: Authorizating {

    private let encoder = JSONEncoder()
    private let urlService: URLServicing
    private let requestService: RequestServicing
    private let dataProvider: DataTaskServicing

    init(urlService: URLServicing = URLService(),
         requestService: RequestServicing = RequestService(),
         dataProvider: DataTaskServicing = DataTaskService()) {
        self.urlService = urlService
        self.requestService = requestService
        self.dataProvider = dataProvider
    }


    /// Авторизация зарегистрированного пользователя
    /// - Parameters:
    ///   - credential: модель содержит логин, пароль, токен
    ///   - completionHandler: подтверждением авторизации будет получение Validate success = true
    func signIn(credential: UserСredential,
                token: String,
                completionHandler: @escaping ResultBlock<Validate>) {

        guard let url = urlService.preparationURL(Path.versionAPI+Path.authenticationToken+Path.validate, nil) else { return }
        var request = requestService.preparationRequest(url, HttpMethod.post)
        let cred = BodyСredential(username: credential.username, password: credential.password, requestToken: token)
        request.httpBody = try? encoder.encode(cred)
        dataProvider.dataTask(with: request, completionHandler: completionHandler)
    }
}
