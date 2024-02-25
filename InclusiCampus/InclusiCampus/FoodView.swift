//
//  FoodView.swift
//  InclusiCampus
//
//  Created by Noelle Davies on 2024-02-25.
//

import SwiftUI

struct FoodView: View {
    
    let greyColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
    var lunchItem = ["Soup", "Salad", "Pasta"]
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 60)
                .fill(Color(greyColor))
                .frame(height: 70)
                .overlay(alignment: .leading) {
                    Text("Lunch").font(.title)
                        .padding(30)
                }
            RoundedRectangle(cornerRadius: 60)
                .fill(Color(greyColor))
                .frame(height: 50)
                .overlay(alignment: .leading) {
                    Text(lunchItem[0]).font(.title3)
                        .padding(30)
                }
        }
    }
}

#Preview {
    FoodView()
}
