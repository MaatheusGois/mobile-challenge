//
//  NetworkManager.swift
//  app-mobile-challenge
//
//  Created by Matheus Silva on 29/11/20.
//

import Foundation
import Combine


final class CurrencyApi: CurrencyProvider {
    
    private var accessKey: String {
        return "?access_key=7787f5623cd1653ff167db4f9c441026"
    }
    private let baseURL = "http://api.currencylayer.com/"
    
    private enum Endpoint: String {
        case list = "list"
        case live = "live"
    }
    private enum Method: String {
        case GET
    }
    
    private init() {}
    static let shared = CurrencyApi()
    
    func lists() -> AnyPublisher<ListCurrency, APIError> {
        call(.list, method: .GET)
    }
    
    func lives() -> AnyPublisher<LiveCurrency, APIError> {
        call(.live, method: .GET)
    }
            
    private func call<T: Codable>(_ endPoint: Endpoint, method: Method) -> AnyPublisher<T, APIError> {
            let urlRequest = request(for: endPoint, method: method)
            
            return URLSession.shared.dataTaskPublisher(for: urlRequest)
                .retry(3)
                .mapError{ _ in APIError.serverError }
                .map { $0.data }
                .decode(type: T.self, decoder: JSONDecoder())
                .mapError { _ in APIError.parsingError }
                .eraseToAnyPublisher()
        }
    
    private func request(for endpoint: Endpoint, method: Method) -> URLRequest {
            let path = "\(baseURL)\(endpoint.rawValue)\(accessKey)"
            guard let url = URL(string: path)
                else { preconditionFailure("Bad URL") }
            
            var request = URLRequest(url: url)
            request.httpMethod = "\(method)"
            request.allHTTPHeaderFields = ["Content-Type": "application/json"]
            return request
        }
}