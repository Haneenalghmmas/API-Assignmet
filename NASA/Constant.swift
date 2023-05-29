//
//  Constant.swift
//  NASA
//
//  Created by Haneen on 09/11/1444 AH.
//

import Foundation

class Constant {
    static var apiKey : String {
         return "QpjPCjNysjhXX4c8DMZU9b9WzAehhQHm3zG5O1IA"
    }
    static var baseUrlString : String {
         return "https://api.nasa.gov/planetary/apod?"
    }
    static var url: URL {
        guard let url = URL(string: "\(baseUrlString)api_Key=\(apiKey)&count=25 ") else {
            fatalError()
        }
        return url
    }
    static var session : URLSession{
        let session = URLSession(configuration: .default)
        return session
    }
    static var request : URLRequest{
        let req = URLRequest(url: url)
        return req
    }
    static var decoder : JSONDecoder {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return decoder
    }
}
