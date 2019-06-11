//
//  Webservice.swift
//  swiftUILearning1
//
//  Created by Kevin Evans on 11/06/2019.
//  Copyright © 2019 Kevin Evans. All rights reserved.
//

import Foundation

class Webservice {
    func getAllEvents(completion: @escaping ([Event]) -> ()){
        guard let url = URL(string: AppSecrets.WRP.url) else {
            fatalError("URL is not correct")
        }
        
        URLSession.shared.dataTask(with: url) { data, _, _ in
            
            let events = try! JSONDecoder().decode([Event].self, from: data!)
            DispatchQueue.main.async {
                completion(events)
            }
        }.resume()
    }
}
