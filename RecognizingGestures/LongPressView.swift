//
//  LongPressView.swift
//  RecognizingGestures
//
//  Created by Christian Manzaraz on 22/05/2024.
//

import SwiftUI

struct LongPressView: View {
    @State private var sizeIndex = 0
    
    private var sizes: [CGSize] = [
        CGSize(width: 150, height: 80),
        CGSize(width: 200, height: 40),
        CGSize(width: 50, height: 250),
        CGSize(width: 220, height: 100),
        CGSize(width: 90, height: 90)
    ]
    
    var longPressGesture: some Gesture {
        LongPressGesture()
            .onEnded { value in
                withAnimation {
                    sizeIndex += 1
                    if sizeIndex == sizes.count {
                        sizeIndex = 0
                    }
                }
            }
    }
    
    var body: some View {
        VStack {
            Text("Touch and hold the capsule to change its size")
            Spacer()
            
            Capsule()
                .foregroundStyle(.yellow)
                .frame(
                    width: sizes[sizeIndex].width,
                    height: sizes[sizeIndex].height)
                .gesture(longPressGesture)
            
            Spacer()
        }
        .navigationTitle("Touch and Hold")
        .padding()
        .toolbar {
            Button("Reset") {
                sizeIndex = 0
            }
        }
    }
}

#Preview {
    LongPressView()
}
