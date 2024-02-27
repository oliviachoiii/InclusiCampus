//
//  FoodView.swift
//  InclusiCampus
//
//  Created by Noelle Davies on 2024-02-25.
//

import SwiftUI

struct IdentifiableFoodItem: Identifiable {
    var id = UUID()
    var item: String
    var allergies: String
}

struct FoodView: View {
    
    let greyColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
    let lunchItems = [
        IdentifiableFoodItem(item: "Soup", allergies: "GF"),
        IdentifiableFoodItem(item: "Salad", allergies: "DF"),
        IdentifiableFoodItem(item: "Pasta", allergies: "GF"),
        IdentifiableFoodItem(item: "Chicken", allergies: "GF"),
        IdentifiableFoodItem(item: "Curry", allergies: "V, DF"),
        IdentifiableFoodItem(item: "Sushi", allergies: "GF"),
        IdentifiableFoodItem(item: "Fries", allergies: "DF")
        ]
    
    let dessertItems = [
        IdentifiableFoodItem(item: "Cookie", allergies: "GF"),
        IdentifiableFoodItem(item: "Brownie", allergies: "GF, DF"),
        IdentifiableFoodItem(item: "Granola Bar", allergies: "GF, DF"),
        IdentifiableFoodItem(item: "Nanaimo Bar", allergies: "GF, V"),
        IdentifiableFoodItem(item: "Tiramisu", allergies: "GF, NF")
        ]
    
    let drinkItems = [
        IdentifiableFoodItem(item: "Coffee", allergies: "GF"),
        IdentifiableFoodItem(item: "Tea", allergies: "GF, NF"),
        IdentifiableFoodItem(item: "Soda", allergies: "GF, DF"),
        IdentifiableFoodItem(item: "Water", allergies: "GF"),
        IdentifiableFoodItem(item: "Hot Chocolate", allergies: "GF")
        ]

    
    var body: some View {
        Rectangle()
            .fill(.clear)
            .frame(height: 60)
            .overlay(
                Text("FOOD").font(.title)
            )
            .cornerRadius(30)
        ScrollView {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(greyColor))
                .frame(height: 70)
                .overlay(alignment: .leading) {
                    Text("Meal").font(.title)
                        .padding(30)
                }
            ScrollView {
                ForEach(lunchItems) { item in
                    RoundedRectangle(cornerRadius: 60)
                        .fill(Color(greyColor))
                        .frame(height: 50)
                        .overlay(alignment: .leading) {
                            HStack(spacing: 10 ) {
                                Text("\(item.item)")
                                    .font(.title3)
                                    .padding(30)
                                Text("\(item.allergies)")
                                    .font(.title3)
                                    .padding(30)
                            }
                        }
                    }
            }
            .frame(height: 300)
            .padding(10)

            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(greyColor))
                .frame(height: 70)
                .overlay(alignment: .leading) {
                    Text("Dessert").font(.title)
                        .padding(30)
                }
            ScrollView {
                ForEach(dessertItems) { item in
                    RoundedRectangle(cornerRadius: 60)
                        .fill(Color(greyColor))
                        .frame(height: 50)
                        .overlay(alignment: .leading) {
                            HStack(spacing: 10 ) {
                                Text("\(item.item)")
                                    .font(.title3)
                                    .padding(30)
                                Text("\(item.allergies)")
                                    .font(.title3)
                                    .padding(30)
                            }
                        }
                    }
            }
            .padding(10)
            .frame(height: 300)
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(greyColor))
                .frame(height: 70)
                .overlay(alignment: .leading) {
                    Text("Drinks").font(.title)
                        .padding(30)
                }
            ScrollView {
                ForEach(drinkItems) { item in
                    RoundedRectangle(cornerRadius: 60)
                        .fill(Color(greyColor))
                        .frame(height: 50)
                        .overlay(alignment: .leading) {
                            HStack(spacing: 10 ) {
                                Text("\(item.item)")
                                    .font(.title3)
                                    .padding(30)
                                Text("\(item.allergies)")
                                    .font(.title3)
                                    .padding(30)
                            }
                        }
                    }
            }
            .frame(height: 300)
            .padding(20)
            
            
        }
    }
}

#Preview {
    FoodView()
}
