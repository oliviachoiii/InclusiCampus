//
//  FeedbackView.swift
//  InclusiCampus
//
//  Created by Noelle Davies on 2024-02-25.
//

import SwiftUI

struct FeedbackView: View {
    var body: some View {
        Rectangle()
            .fill(.clear)
            .frame(height: 60)
            .overlay(
                Text("Feedback").font(.title)
            )
            .cornerRadius(30)
    }
}

#Preview {
    FeedbackView()
}
