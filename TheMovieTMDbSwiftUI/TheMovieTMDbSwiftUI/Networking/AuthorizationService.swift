//
//  AuthorizationService.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 23.01.2021.
//

import Foundation

protocol Authorizating {
    func signIn(authorization: Authorization,
                completionHandler: @escaping ResultBlock<Bool>)
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
    ///   - authorization: модель содержит логин, пароль, токен
    ///   - completionHandler: подтверждением авторизации будет получение логического ответа true
    func signIn(authorization: Authorization,
                completionHandler: @escaping ResultBlock<Bool>) {

        guard let url = urlService.preparationURL(Path.versionAPI+Path.authenticationToken+Path.validate, nil) else { return }
        var request = requestService.preparationRequest(url, HttpMethod.post)
        request.httpBody = try? encoder.encode(authorization)
        dataProvider.dataTask(with: request, completionHandler: completionHandler)
    }
}
