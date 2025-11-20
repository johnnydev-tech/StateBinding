//
//  InputNameComponent.swift
//  StateBinding
//
//  Created by Johnny Freire on 19/11/25.
//

import SwiftUI

struct InputNameComponent: View {
    @Binding var name: String
    var body: some View {
        TextField(text: $name){
            Text("Nome")
                .foregroundColor(.black)
                .font(.title3)
        }
        .frame(height: 32)
        
        .padding()
        .cornerRadius(10)
        .shadow(radius: 5)
        .background(Color(.secondarySystemBackground))
        .cornerRadius(12)
    }
}

#Preview {
    InputNameComponent(name: .constant("Johnny"))
}
