//
//  NetworkManager.swift
//  StarsWarsInfo
//
//  Created by Daniil Litvinov on 04.03.2025.
//

import Foundation

class NetworkManager {
    
    let url = "https://swapi.dev/api/"
    
    func getSWInfo() {
        var components = URLComponents(string: url)
//        components?.scheme = "https"
//        components?.host = "swapi.dev"
//        
        guard let url = components?.url else { return }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if error != nil {
                print("\(String(describing: error?.localizedDescription))")
                print("URL NO _______________")
            }
            guard let data = data else { return }
            
        }.resume()
        
    }
    
}


