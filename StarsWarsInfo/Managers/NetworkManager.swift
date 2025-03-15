//
//  NetworkManager.swift
//  StarsWarsInfo
//
//  Created by Daniil Litvinov on 04.03.2025.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    let url = "https://swapi.dev/api/"
    
    func getSWInfo() {
        let components = URLComponents(string: url)
        guard let url = components?.url else { return }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if error != nil {
                print("\(String(describing: error?.localizedDescription))")
                print("URL NO _______________")
            }
            guard let data = data else { return }
            print("\(String(describing: String(data: data, encoding: .utf8)))")
            
        }.resume()
    }
    
}


