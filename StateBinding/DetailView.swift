//
//  DetailView.swift
//  StateBinding
//
//  Created by Johnny Freire on 19/11/25.
//

import SwiftUI

struct DetailView: View {
    @Binding var count: Int
    @Binding var name: String
    
    var body: some View {
        VStack {
            Text("O valor recebido de \(name.isEmpty ? "-" : name ) foi: \(count)")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            Button("Aumentar") {
                count += 1
            }
        }
        .padding()
    }
}

#Preview {
    DetailView(count: .constant(2),
               name: .constant("Johnny")
    )
    
    //        .environmentObject(CounterStateBinding())
}
