//
//  MotionAnimationView.swift
//  HikeApp
//
//  Created by Dorian Emenir on 26/06/2024.
//

import SwiftUI

struct MotionAnimationView: View {
    var body: some View {
        ZStack {
            Circle()
                .foregroundStyle(.white)
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
