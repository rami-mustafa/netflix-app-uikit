

import Foundation


struct Constants {
    static let API_KEY = "9b303e5ef5fd7b3d9e4c0fb8d780d131"
    static let baseURL = "https://api.themoviedb.org"
    
}


enum APIError: Error {
    case failedTogetData
}

class APICaller{
        static let shared = APICaller()
    
    
    func getTrendingMovies(completion: @escaping (Result<[Movie], Error>) -> Void) {
        
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/movie/day?api_key=\(Constants.API_KEY)") else {return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let results = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
                completion(.success(results.results))
                
            }catch {
                completion(.failure(error))
            }
        }
        
        task.resume()
    }
    
    func getTrendingTvs(completion: @escaping (Result<[String], Error>) -> Void) {
        
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/tv/day?api_key=\(Constants.API_KEY)") else {return}
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
          
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let results = try JSONSerialization.jsonObject(with: data , options: .fragmentsAllowed)
                print(results)
                
            }catch {
                print(error.localizedDescription)
            }
        }
        
        task.resume()
    }
}


