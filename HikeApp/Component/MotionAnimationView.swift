//
//  MotionAnimationView.swift
//  HikeApp
//
//  Created by Dorian Emenir on 26/06/2024.
//

import SwiftUI

struct MotionAnimationView: View {
    // MARK: PROPERTIES
    
    @State private var randomCircle: Int = Int.random(in: 6...12)
    
    // MARK: FUNCTIONS
    
    // 1. RANDOM COORDINATE
    func randomCoordinate() -> CGFloat {
        return CGFloat.random(in: 0...256)
    }
    
    // 2. RANDOM SIZE
    func randomSize() -> CGFloat {
        return CGFloat(Int.random(in: 4...80))
    }
    
    // 3. RANDOM SCALE
    
    // 4. RANDOM SPEED
    
    // 5. RANDOM DELAY
    
    
    var body: some View {
        ZStack {
            ForEach(0...randomCircle, id: \.self) { item in
                Circle()
                    .foregroundStyle(.white)
                    .opacity(0.25)
                    .frame(width: randomSize())
                    .position(
                        x: randomCoordinate(),
                        y: randomCoordinate()
                    )
            }
        } //: ZSTACK
        .frame(width: 256, height: 256)
    }
}

#Preview {
    ZStack {
        Color.teal
            .ignoresSafeArea()
        
        MotionAnimationView()
    }
}
