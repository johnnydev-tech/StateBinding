//
//  NoStateView.swift
//  StateBinding
//
//  Created by Johnny Freire on 19/11/25.
//

import SwiftUI

struct NoStateView: View {
    var count: Int = 0
    var body: some View {
        Text("O valor é \(count)")
        
        Button{
            increment()
        }label: {
            Text("Incrementar")
        }
    }
    
    func increment(){
        /// Not works
//        count += 1
    }
}

#Preview {
    NoStateView()
}
