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
            .resizable()
            .frame(width: 320, height: 180)
    }
}

#if DEBUG
struct Photo_Previews : PreviewProvider {
    static var previews: some View {
        Photo(imageUrl: "https://imageserver.huwevansimages.co.uk/wales-football-training-230319/w400/CDF_230319_CF_Wales_Football_Training_03.JPG")
    }
}
#endif
