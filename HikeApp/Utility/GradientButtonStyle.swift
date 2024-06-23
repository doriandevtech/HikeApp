//
//  GradientButtonStyle.swift
//  HikeApp
//
//  Created by Dorian Emenir on 23/06/2024.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                // Conditional Statement with Nul Coalescing
                // Condition ? A : B
                configuration.isPressed ?
                // A: When user press the button
                LinearGradient(
                    colors: [
                        .colorGrayMedium,
                        .colorGrayLight
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                )
                
                :
                
                // B: When the Button is not pressed
                LinearGradient(
                    colors: [
                        .colorGrayLight,
                        .colorGrayMedium
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .clipShape(.rect(cornerRadius: 40))
    }
}
