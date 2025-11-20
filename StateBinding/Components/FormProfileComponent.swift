//
//  FormProfileView.swift
//  StateBinding
//
//  Created by Johnny Freire on 19/11/25.
//

import SwiftUI

struct FormProfileComponent: View {
    @Binding var name : String
    @Binding var age : Int
    
    
    var body: some View {
        InputNameComponent(name: $name)
        
        Picker("Informe sua idade", selection: $age){
            ForEach(0...99, id: \.self){
                Text("\($0) anos").tag($0)
            }
        }.frame(height: 32)
            .padding()
            .cornerRadius(10)
            .shadow(radius: 5)
            .background(Color(.secondarySystemBackground))
            .cornerRadius(12)
        //                    .pickerStyle(.palette)
        
        NavigationLink(
            destination:
                ProfileView(name: $name, age: $age)){
                    Text("Ir para perfil")
                        .foregroundColor(.white)
                        .font(.title3)
                }
                .padding()
                .cornerRadius(10)
                .shadow(radius: 5)
                .background(Color(.blue))
                .cornerRadius(12)
                .padding(EdgeInsets.init(top: 24, leading: 0, bottom: 0, trailing: 0))
        
    }
}

#Preview {
    FormProfileComponent(name: .constant("Johnny"), age: .constant(28))
}
