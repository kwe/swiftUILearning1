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
    @State private var theScore = ""

    var body: some View {
        VStack(alignment: .leading) {
            Text(event.score)
                .font(.largeTitle)
                .lineLimit(nil)

            Photo(imageUrl:event.posterUri)
            TextField($theScore, placeholder: Text("Score appears here"))
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
                            posterUri:"https://placeimg.com/400/400/any",
                            score: "Guess who's back" ,
                            title: "Wales v England")
        return EventDetailView(event: e)
    }
}
#endif
