//
//  GestureRow.swift
//  RecognizingGestures
//
//  Created by Christian Manzaraz on 22/05/2024.
//

import SwiftUI

struct GestureRow: View {
    
    let title: String
    let description: String
    let systemImage: String
    
    var body: some View {
        HStack {
            Image(systemName: systemImage)
                .frame(width: 30)
                .font(.title)
                .foregroundStyle(Color.accentColor)
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.bottom, 2)
                Text(description)
                    .foregroundStyle(.secondary)
                    .fixedSize(horizontal: false, vertical: false)
            }
            
            
        }
        .padding(10)
    }
}

#Preview {
    GestureRow(title: "Drag", description: "Drag a shape using one finger", systemImage: "arrow.up.and.down.and.arrow.left.and.right")
}
