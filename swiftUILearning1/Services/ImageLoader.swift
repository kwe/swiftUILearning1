//
//  ImageLoader.swift
//  swiftUILearning1
//
//  Created by Kevin Evans on 12/06/2019.
//  Copyright © 2019 Kevin Evans. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

class ImageLoader: BindableObject {
    var didChange = PassthroughSubject<Data, Never>()
    
    var data = Data() {
        didSet {
            didChange.send(data)
        }
    }
    
    init(imageUrl: String) {
        // fetch image data and then call didChange
        guard let url = URL(string: imageUrl) else { return }
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else { return }
            
            DispatchQueue.main.async {
                self.data = data
            }
            
            }.resume()
    }
}
