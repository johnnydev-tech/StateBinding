//
//  ProfileView.swift
//  StateBinding
//
//  Created by Johnny Freire on 19/11/25.
//

import SwiftUI

struct ProfileView: View {
    @ObservedObject var controller: ProfileViewController
    var body: some View {
        NavigationStack{
            Text("Nome: \(controller.name)")
            Text("Idade: \(controller.age)")
            Spacer().frame(height: 32)
            InputNameComponent(name: $controller.newName)
            Spacer().frame(height: 32)
            Button{
                controller.changeName()
            } label: {
                HStack{
                    Image(systemName: "pencil")
                    Text("Salvar")
                    
                }
            }.buttonStyle(.glassProminent)
                .disabled(controller.validateNewName())
        }.navigationTitle("Perfil")
            .padding(32)
    }
    
}

#Preview {
    ProfileView(controller: ProfileViewController(name: "Johnny", age: 28)
    )
}

