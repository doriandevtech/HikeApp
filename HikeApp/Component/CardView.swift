//
//  CardView.swift
//  HikeApp
//
//  Created by Dorian Emenir on 18/06/2024.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        // MARK: - CARD
        
        ZStack {
            CustomBackgroundView()
            
            ZStack {
                Circle()
                    .fill(
                        LinearGradient(colors: [Color.colorIndigoMedium, Color.colorSalmonLight], startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .frame(width: 256, height: 256)
                
                Image("image-1")
                    .resizable()
                .scaledToFit()
            }
        } //: CARD
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
