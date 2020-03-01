//
//  Network.swift
//  Palindrome
//
//  Created by Anton Shvets on 3/1/20.
//  Copyright © 2020 Hahaton. All rights reserved.
//

import Foundation
class Network {
    let session = URLSession(configuration: .default)
    
    func getIdeas(completion: @escaping ([Idea]) -> Void) {
        guard let url = URL(string: "https://palindrome-fe5b9.firebaseio.com/tasks.json") else {
            fatalError()
        }
        let task = session.dataTask(with: url) { (data, response, error) in
            do {
                let decoder = JSONDecoder()
                let model = try decoder.decode([String:Idea].self, from: data!)
                completion(Array(model.values))
                
            } catch let parsingError {
                print("Error", parsingError)
            
            }
        }
        task.resume()
    }
    
    
    
}

