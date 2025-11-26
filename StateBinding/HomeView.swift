//
//  StateView.swift
//  StateBinding
//
//  Created by Johnny Freire on 19/11/25.
//

import SwiftUI

struct HomeView: View {
    
    // Property Wrapper
    // @...
    //    @State var text: String = "Hello, World!"
    
    // Cria a instancia do State
    //    @StateObject var state = CounterStateBinding()
    @StateObject var controller = ProfileViewController(name: "", age: 0)
    
    @State var count: Int = 0
    
   
    var body: some View {
        NavigationStack{
            Form{
                Section("Parte 1 - Estado"){
                    HStack{
                        Text("O valor é \(count)")
                        Spacer()
                        Button{
                            increment()
                        }label: {
                            Text("+ Incrementar")
                        }
                        
                    }
                    NavigationLink{
                        //DetailView().environmentObject(state)
                        DetailView(count: $count, name: $controller.name)
                    }label: {
                        Text("Navegar para DetailView")
                    }
                    
                }
                
                
                Section("Parte 2 - Desafio"){
                    FormProfileComponent(controller: controller)
                }
                
            }
            
            
            
        }.navigationTitle("Meus dados")
    }
    
    func increment(){
        count += 1
    }
}

#Preview {
    HomeView()
}
