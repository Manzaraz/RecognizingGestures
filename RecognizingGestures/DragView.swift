//
//  DragView.swift
//  RecognizingGestures
//
//  Created by Christian Manzaraz on 22/05/2024.
//

import SwiftUI

struct DragView: View {
    private let circleSize: CGFloat = 100
    @State private var offset = CGSize.zero
    
    var dragGesture: some Gesture {
        DragGesture()
            .onChanged { value in
                offset = CGSize(
                    width: value.startLocation.x + value.translation.width - circleSize/2,
                    height: value.startLocation.y + value.translation.height - circleSize/2
                )
            }
    }
    
    var body: some View {
        VStack {
            Text("Use on finger to drag the circle around")
            Spacer()
            
            Circle()
                .foregroundStyle(.teal)
                .frame(width: circleSize, height: circleSize)
                .offset(offset)
                .gesture(dragGesture)
            
            Spacer()
        }
        .navigationTitle("Drag")
        .padding()
        .toolbar {
            Button("Reset") {
                offset = .zero
            }
        }
    }
}

#Preview {
    DragView()
}
