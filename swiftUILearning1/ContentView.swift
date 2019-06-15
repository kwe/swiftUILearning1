//
//  ContentView.swift
//  swiftUILearning1
//
//  Created by Kevin Evans on 09/06/2019.
//  Copyright © 2019 Kevin Evans. All rights reserved.
//

import SwiftUI
import Combine

struct ContentView : View {
    
    @State var model = EventListViewModel()
    
    var body: some View {
        NavigationView {
            List(model.events) { event in
                VStack{
                    Photo(imageUrl: event.posterUri).padding(10)
                    Text(event.score)
                        .lineLimit(nil)
                        .font(.body)
                }
            }.navigationBarTitle(Text("Recently"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
