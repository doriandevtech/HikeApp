//
//  CustomListRowView.swift
//  HikeApp
//
//  Created by Dorian Emenir on 10/07/2024.
//

import SwiftUI

struct CustomListRowView: View {
    // MARK: - PROPERTIES
    
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String
    @State var rowTintColor: Color
    
    var body: some View {
        LabeledContent {
            // Content
            Text(rowContent)
                .foregroundStyle(.primary)
                .fontWeight(.heavy)
        } label: {
            // Label
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundStyle(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                }
                Text(rowLabel)
            }
        }
    }
}

#Preview {
    List() {
        CustomListRowView(
            rowLabel: "Designer",
            rowIcon: "paintpalette",
            rowContent: "John Doe",
            rowTintColor: .pink
        )
    }
}
