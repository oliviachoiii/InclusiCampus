//
//  MapView.swift
//  InclusiCampus
//
//  Created by Noelle Davies on 2024-02-24.
//

import SwiftUI

struct MapView: View {
    var place = ["Clearihue", "Elliott", "ECS"]
    
    let greyColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
    
    var body: some View {
        VStack(){
            RoundedRectangle(cornerRadius: 60)
                .fill(Color(greyColor))
                .frame(height: 460)
                .overlay(alignment: .top) {
                    VStack {
                        Text("Map")
                            .font(.title)
                            .padding(5)
                        Image("uvicCampus")
                            .resizable()
                            .frame(width: 320, height: 380)
                            .cornerRadius(60)
                    }
                }
            RoundedRectangle(cornerRadius: 60)
                .fill(Color(greyColor))
                .frame(height: 70)
                .overlay(alignment: .leading) {
                    HStack {
                        Text("Where: ").font(.title3)
                            .padding(30)
                        Text(place[0]).font(.title3)
                            .padding(30)
                    }
                }
            RoundedRectangle(cornerRadius: 60)
                .fill(Color(greyColor))
                .frame(height: 150)
                .overlay(alignment: .center) {
                    Text("Place info here")
                    
                }
        }
        .padding(20)
    }
}

#Preview {
    MapView()
}
