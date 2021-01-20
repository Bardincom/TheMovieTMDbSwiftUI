import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

struct Movie: Codable {
    var results: [Result]
}

struct Result: Codable {
    var id: Int
    var backdrop_path: String
    var poster_path: String
    var overview: String
    var title: String
}

class SessionConfig {
    private let sharedSession = URLSession.shared
    private let decoder = JSONDecoder()
    private let encoder = JSONEncoder()
    private let scheme = "https"
    private let host = "api.themoviedb.org"
    private let pathAPIVersion = "/3/"
    private let pathMovie = "movie/"
    private let pathPopular = "popular"

    var defaultHeaders =
        [
            "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJkOGMwNzEyNDVhN2U3YzE2MjAyNzI5OTk2M2U2NDZmZCIsInN1YiI6IjYwMDgyNTRhM2Y4ZWRlMDA0MDVlMTU3YyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.pLqWDPSHNo3n3QIztUk60Hxn7ijNTOlqlxPTQVsmEGY",
            "Content-Type": "application/json",
        ]

    func preparationURLComponents(path: String) -> URLComponents? {
        var urlComponents = URLComponents()
        urlComponents.scheme = scheme
        urlComponents.host = host
        urlComponents.path = path

        //    guard let queryItem = queryItem else { return urlComponents }

        urlComponents.queryItems = [
            URLQueryItem(name: "language", value: "ru")
        ]


        return urlComponents
    }


    func preparationURL() -> URL? {
        guard let url = preparationURLComponents(path: pathAPIVersion+pathMovie+pathPopular)?.url else { return nil}
        return url
    }

    func getFactWeather() {
        guard let url = preparationURL() else { return }

        var request = URLRequest(url: url)

        request.httpMethod = "GET"
        request.allHTTPHeaderFields = defaultHeaders

        print(request)

        let dataTask = sharedSession.dataTask(with: request) { (data, response, error) in

            if let error = error {
                print(error.localizedDescription)
            }

            guard let response = response as? HTTPURLResponse else { return }
            print(response.statusCode)

            guard let data = data else { return }

            print(data)

            do {
                let movies = try self.decoder.decode(Movie.self, from: data)
                movies.results.forEach { print($0.id, $0.title , $0.poster_path) }

            } catch let error {
                print(error)
            }

        }

        dataTask.resume()
    }


}

let sessionConf = SessionConfig()
sessionConf.getFactWeather()




