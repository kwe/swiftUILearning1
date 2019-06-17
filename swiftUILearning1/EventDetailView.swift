//
//  EventDetailView.swift
//  swiftUILearning1
//
//  Created by Kevin Evans on 17/06/2019.
//  Copyright © 2019 Kevin Evans. All rights reserved.
//

import SwiftUI

struct EventDetailView : View {
    
    var event: Event

    var body: some View {
        VStack(alignment: .leading) {
            Text(event.title)
                .font(.largeTitle)
            Photo(imageUrl:event.posterUri)
            //TextField()
            Spacer()
        }.padding()
    }
}

#if DEBUG
struct EventDetailView_Previews : PreviewProvider {
    static var previews: some View {
        let e:Event = Event(id:4,
                            posterWidth: 400,
                            posterHeight:400,
                            posterUri:"https://imageserver.huwevansimages.co.uk/andy-murray-170619/w400/CDF_170619_Andy_Murray_19.jpg",
                            score: "Guess who's back" ,
                            title: "hello")
        return EventDetailView(event: e)
    }
}
#endif
