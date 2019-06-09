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
    var body: some View {
        NavigationView{
            List(
                [
                    Event.init(caption: "hello there", filename: "one", src: "there"),
                    Event.init(caption: "This is a test", filename: "two", src:"ha hah")
                ].identified(by: \.filename)
            ){
                Text($0.caption)
            }
        }.navigationBarTitle(Text("Courses"))
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
