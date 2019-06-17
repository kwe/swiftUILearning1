//
//  Photo.swift
//  swiftUILearning1
//
//  Created by Kevin Evans on 12/06/2019.
//  Copyright © 2019 Kevin Evans. All rights reserved.
//

import Foundation
import SwiftUI

struct Photo: View {
    
    @ObjectBinding var imageLoader: ImageLoader
    
    init(imageUrl: String) {
        imageLoader = ImageLoader(imageUrl: imageUrl)
    }
    
    var body: some View {
        Image(uiImage: (imageLoader.data.count == 0) ? UIImage(named: "blank")! : UIImage(data: imageLoader.data)!)
            .frame(width:320, height:320)
            .aspectRatio(contentMode: .fit)
            .clipped()
    }
}

#if DEBUG
struct Photo_Previews : PreviewProvider {
    static var previews: some View {
        Photo(imageUrl: "https://placeimg.com/400/400/any")
    }
}
#endif
