//
//  CustomBackgroundView.swift
//  HikeApp
//
//  Created by Dorian Emenir on 23/06/2024.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            // MARK: - 3. DEPTH
            
            Color.colorGreenDark
                .clipShape(.rect(cornerRadius: 40))
                .offset(y: 12)
            
            // MARK: - 2. LIGHT
            
            Color.colorGreenLight
                .clipShape(.rect(cornerRadius: 40))
                .offset(y: 3)
                .opacity(0.85)
            
            // MARK: - 1. SURFACE
            
            LinearGradient(colors: [Color.colorGreenLight, Color.colorGreenMedium], startPoint: .top, endPoint: .bottom)
                .clipShape(.rect(cornerRadius: 40))
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
