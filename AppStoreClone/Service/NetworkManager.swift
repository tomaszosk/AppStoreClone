//
//  NetworkManager.swift
//  AppStoreClone
//
//  Created by Tomasz Oskroba on 5/19/21.
//

import Foundation

class NetworkManager {
    
    static let shared = NetworkManager()
    
    func fetchApps(completionHandler: @escaping ([Result], Error?) -> ()) {
        let urlString = "https://itunes.apple.com/search?term=instagram&entity=software"
        guard let url = URL(string: urlString) else { return }

        URLSession.shared.dataTask(with: url) { (data, response, error) in

            if let error = error {
                print("Failer to fetch apps:", error)
                completionHandler([], nil)
                return
            }

            guard let data = data else { return }

            do {
                let searchResult = try JSONDecoder().decode(SearchResult.self, from: data)

                completionHandler(searchResult.results, nil)

            } catch let jsonError {
               print("Failed to decode JSON:", jsonError)
                completionHandler([], jsonError)
            }

        }.resume()
    }
    
}
