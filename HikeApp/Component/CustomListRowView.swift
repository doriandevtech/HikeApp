//
//  CustomListRowView.swift
//  HikeApp
//
//  Created by Dorian Emenir on 10/07/2024.
//

import SwiftUI

struct CustomListRowView: View {
    var body: some View {
        LabeledContent {
            // Content
            Text("Hike")
                .foregroundStyle(.primary)
                .fontWeight(.heavy)
        } label: {
            // Label
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundStyle(.blue)
                    Image(systemName: "apps.iphone")
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                }
                Text("Application")
            }
        }
    }
}

#Preview {
    List() {
        CustomListRowView()
    }
}
