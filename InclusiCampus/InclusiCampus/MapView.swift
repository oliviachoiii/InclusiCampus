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
        Rectangle()
            .fill(.clear)
            .frame(height: 60)
            .overlay(
                Text("MAP").font(.title)
            )
            .cornerRadius(30)
        
        VStack(){
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(greyColor))
                .frame(height: 420)
                .overlay(alignment: .top) {
                    VStack {
                        Image("uvicCampus")
                            .resizable()
                            .frame(width: 320, height: 380)
                            .padding(20)
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
                .overlay(alignment: .leading) {
                    VStack {
                        HStack {
                            Text("Crack in pavement")
                                .font(.title3)
                                .padding(5)
                            Spacer()
                        }
                      HStack (alignment: .top, spacing: 70) {
                                VStack {
                                    Text("#wheelchair")
                                    Text("#mobilityaid")
                                    Text("#movement")
                                }
                                Image("pavementCrack")
                                    .resizable()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(20)
                            }
                    }
                    .padding(20)
                }
                    
        }
        .padding(20)
    }
}

#Preview {
    MapView()
}
