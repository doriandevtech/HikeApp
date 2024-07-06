//
//  SettingsView.swift
//  HikeApp
//
//  Created by Dorian Emenir on 04/07/2024.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            // MARK: - SECTION: HEADER
            
            Section {
                HStack {
                    Spacer()
                    
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        
                        Text("Editor's choice")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    
                    Spacer()
                }
                .foregroundStyle(
                    .linearGradient(
                        colors: [
                            .colorGreenLight,
                            .colorGreenMedium,
                            .colorGreenDark
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .padding(.top, 8)
                
                VStack(spacing: 8) {
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The hike looks gorgeous in photos but is even better once you are already doing it. \nFind the best hikes in the app !")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust off the boots! It's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundStyle(.colorGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
                
            } //: HEADER
            .listRowSeparator(.hidden)
            
            // MARK: - SECTION: ICONS
            
            // MARK: - SECTION: ABOUT
            
            Section(
                header: Text("ABOU THE APP"),
                footer: HStack {
                    Spacer()
                    Text("Copyright © All rights reserved.")
                    Spacer()
                }
                    .padding(.vertical, 8)
            ) {
                // 1. Basic Labeled Content
                LabeledContent("Application", value: "Hike")
            } //: SECTION
            
        }
    }
}

#Preview {
    SettingsView()
}
