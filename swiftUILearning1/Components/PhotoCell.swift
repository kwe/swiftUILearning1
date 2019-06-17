//
//  PhotoCell.swift
//  swiftUILearning1
//
//  Created by Kevin Evans on 17/06/2019.
//  Copyright © 2019 Kevin Evans. All rights reserved.
//

import SwiftUI

struct PhotoCell : View {
    var event: Event
    var body: some View {
        return VStack{
            Photo(imageUrl: event.posterUri).padding(10)
            Text(event.score)
                .lineLimit(nil)
                .font(.headline)
        }
    }
}

#if DEBUG
struct PhotoCell_Previews : PreviewProvider {
    static var previews: some View {
        let e = Event(id: 4, posterWidth: 400, posterHeight: 400, posterUri: "https://imageserver.huwevansimages.co.uk/wales-football-training-230319/w400/CDF_230319_CF_Wales_Football_Training_03.JPG", score: "Wales 40-0 England", title: "Wales v England")
        return PhotoCell(event: e)
    }
}
#endif
