//
//  EventListViewModel.swift
//  swiftUILearning1
//
//  Created by Kevin Evans on 11/06/2019.
//  Copyright © 2019 Kevin Evans. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

final class EventListViewModel: BindableObject {
    
    init() {
        fetchEvents()
    }
    
    var events = [Event]() {
        didSet {
            didChange.send(self)
        }
    }
    
    private func fetchEvents(){
        Webservice().getAllEvents {
            self.events = $0
        }
    }
    let didChange = PassthroughSubject<EventListViewModel, Never>()

   
}
