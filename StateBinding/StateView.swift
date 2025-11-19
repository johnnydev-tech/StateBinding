//
//  StateView.swift
//  StateBinding
//
//  Created by Johnny Freire on 19/11/25.
//

import SwiftUI

struct StateView: View {
    
    // Property Wrapper
    // @...
    //    @State var text: String = "Hello, World!"
    
    // Cria a instancia do State
    @StateObject var state = CounterStateBinding()
    
    var body: some View {
        NavigationStack{
            VStack(spacing:30){
                Text("O valor é \(state.counter)")
                
                Button{
                    increment()
                }label: {
                    Text("Incrementar")
                }
                
                NavigationLink{
                    DetailView().environmentObject(state)
                }label: {
                    Text("Navegar para DetailView")
                }
            }
        }
    }
    
    func increment(){
        state.increment()
    }
}

#Preview {
    StateView()
}
