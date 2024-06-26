//
//  CustomCircleView.swift
//  HikeApp
//
//  Created by Dorian Emenir on 26/06/2024.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimateGradient: Bool = false
    
    var body: some View {
        Circle()
            .fill(
                LinearGradient(
                    colors: [
                        .colorIndigoMedium,
                        .colorSalmonLight
                    ],
                    startPoint: isAnimateGradient ? .topLeading : .bottomLeading,
                    endPoint: isAnimateGradient ? .bottomTrailing : .topTrailing
                )
            )
            .onAppear {
                withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                    isAnimateGradient.toggle()
                }
            }
            .frame(width: 256, height: 256)
    }
}

#Preview {
    CustomCircleView()
}
