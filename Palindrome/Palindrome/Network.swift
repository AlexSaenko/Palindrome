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
    
    func getIdeas() {
        guard let url = URL(string: "https://palindrome-fe5b9.firebaseio.com/tasks.json") else {
            fatalError()
        }
        let task = session.dataTask(with: url) { (data, response, error) in
            print(String(data: data!, encoding: .utf8)!)
        }
        task.resume()
    }
    
    
    
}

