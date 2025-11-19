//
//  DetailView.swift
//  StateBinding
//
//  Created by Johnny Freire on 19/11/25.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject var state: CounterStateBinding

    var body: some View {
        VStack {
            Text("O valor recebido foi: \(state.counter)")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            Button("Aumentar") {
                state.increment()
            }
        }
    }
}

#Preview {
    DetailView()
        .environmentObject(CounterStateBinding())
}
