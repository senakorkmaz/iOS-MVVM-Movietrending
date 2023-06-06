//
//  APICaller.swift
//  Movietrending
//
//  Created by Senanur Korkmaz on 21.05.2023.
//

import Foundation

enum NetworkError: Error{
    case urlError
    case canNotParseData
}

public class APICaller{

    static func getTrendingMovies(completionHandler: @escaping (_ result: Result<TrendingMovieModel,NetworkError>) -> Void) {
        
        let urlStirng = NetworkConstant.shared.serverAdress + "trending/all/day"
        
        let headers = [
          "accept": "application/json",
          "Authorization": "Bearer " + NetworkConstant.shared.apiAuth
        ]
        
        guard let url = NSURL(string: urlStirng) else{
            completionHandler(.failure(.urlError))
            return
        }

        let request = NSMutableURLRequest(url: url as URL,cachePolicy: .useProtocolCachePolicy,timeoutInterval: 10.0)
        
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
    
        URLSession.shared.dataTask(with: request as URLRequest) { dataResponse, urlResponse, error in
            if error == nil,
               let data = dataResponse,
               let resultData = try? JSONDecoder().decode(TrendingMovieModel.self, from: data){
                completionHandler(.success(resultData))
            }else{
                completionHandler(.failure(.canNotParseData))
            }
                
        }.resume()
    }
        
}
