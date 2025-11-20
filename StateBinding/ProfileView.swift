//
//  ProfileView.swift
//  StateBinding
//
//  Created by Johnny Freire on 19/11/25.
//

import SwiftUI

struct ProfileView: View {
    @Binding var name: String
    @Binding var age: Int
    
    var body: some View {
        NavigationStack{
            Text("Nome: \(name)")
            Text("Idade: \(age)")
            Spacer().frame(height: 32)
            InputNameComponent(name: $name)
            
            
        }.navigationTitle("Perfil")
        .padding(32)
    }
    
}

#Preview {
    ProfileView(
        name: .constant("Johnny"), age: .constant(28)
    )
}
