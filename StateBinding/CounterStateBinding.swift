//
//  CounterStateBinding.swift
//  StateBinding
//
//  Created by Johnny Freire on 19/11/25.
//

import SwiftUI
internal import Combine

class CounterStateBinding: ObservableObject {
    @Published var counter: Int = 0
    
    
    func increment() {
        counter += 1
    }
}
