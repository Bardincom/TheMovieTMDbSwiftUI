//
//  DataTaskService.swift
//  TheMovieTMDbSwiftUI
//
//  Created by Aleksey Bardin on 20.01.2021.
//

import Foundation

typealias ResultBlock<T> = (Result<T, BackendError>) -> Void

protocol DataTaskServicing {
    func dataTask<T: Codable>(with request: URLRequest, completionHandler: @escaping ResultBlock<T>)
}

class DataTaskService: DataTaskServicing {

    private let session = URLSession(configuration: URLSessionConfiguration.default)
    private let decoder = JSONDecoder()

    /// Получение данных после запроса
    func dataTask<T: Codable>(with request: URLRequest, completionHandler: @escaping ResultBlock<T>) {

        session.configuration.waitsForConnectivity = true
        session.configuration.timeoutIntervalForResource = 60

        let dataTask = session.dataTask(with: request) { [weak self] (data, response, error) in
            guard let self = self else { return }
            if let error = error {
                print("Возникла ошибка: \(error.localizedDescription)")
                completionHandler(.failure(.otherError))
            }

            guard let httpResponse = response as? HTTPURLResponse else {
                print(error.debugDescription)
                completionHandler(.failure(.notFound))
                return
            }

            guard self.checkBackendErrorStatus(httpResponse: httpResponse, completionHandler: completionHandler) else { return }

            guard let data = data else { return }

            do {
                let result = try self.decoder.decode(T.self, from: data)
                completionHandler(.success(result))
            } catch {
                completionHandler(.failure(.notFound))
            }
        }
        dataTask.resume()
    }

    /// Проверка статуса запроса
    private func checkBackendErrorStatus<T>(httpResponse: HTTPURLResponse,
                                    completionHandler: @escaping ResultBlock<T>) -> Bool {
        guard httpResponse.statusCode == 200 else {
            let backendError: BackendError

            switch httpResponse.statusCode {
                case 401: backendError = .unauthorized
                case 404: backendError = .notFound
                default: backendError = .otherError
            }

            completionHandler(.failure(backendError))
            return false
        }
        return true
    }

}
