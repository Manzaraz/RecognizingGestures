//
//  RotateView.swift
//  RecognizingGestures
//
//  Created by Christian Manzaraz on 22/05/2024.
//

import SwiftUI

struct RotateView: View {
    @State private var rotation = Angle.zero
    
    var rotationGesture: some Gesture {
        RotationGesture()
            .onChanged { angle in
                rotation = angle
            }
            .onEnded { angle in
                rotation = angle
            }
    }
    
    var body: some View {
        VStack {
            Text("Use two fingers to rotate the box")
            Spacer()
            
            Rectangle()
                .foregroundStyle(.red)
                .frame(width: 225, height: 225)
                .rotationEffect(rotation)
                .gesture(rotationGesture)
                        
            Spacer()
        }
    }
}

#Preview {
    RotateView()
}
