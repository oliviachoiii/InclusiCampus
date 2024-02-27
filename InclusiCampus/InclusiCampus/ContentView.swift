//
//  ContentView.swift
//  InclusiCampus
//
//  Created by Noelle Davies on 2024-02-23.
//

import SwiftUI


struct ContentView: View {
    
    let greyColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
    let blueEarthColor = UIColor(red: 0.7, green: 0.8, blue: 1, alpha: 1)
    let greenEarthColor = UIColor(red: 0.68, green: 0.88, blue: 0.73, alpha: 1)
    
    var body: some View {
        NavigationView {
            // vstack holding the rows of options
            VStack {
                // rectangle 1 holds the title
                Rectangle()
                    .fill(.clear)
                    .frame(height: 60)
                    .overlay(
                        Text("InclusiCampus").font(.title)
                    )
                    .cornerRadius(30)
                
                // rectangle 2 holds the food section
                RoundedRectangle(cornerRadius: 60)
                    .fill(Color(greyColor))
                    .frame(width: 360, height: 150)
                    .overlay(alignment: .leading) {
                        NavigationLink(destination: FoodView()) {
                            RoundedRectangle(cornerRadius: 60)
                                .fill(Color(blueEarthColor))
                                .frame(width: 210, height: 150)
                                .overlay() {
                                    HStack () {
                                        Circle()
                                            .foregroundColor(Color(.white))
                                            .frame(height: 105)
                                            .overlay() {
                                                Circle()
                                                    .fill(Color(greyColor))
                                                    .frame(height: 70)
                                            }
                                        Image(systemName: "fork.knife")
                                            .foregroundColor(Color(.white))
                                            .font(.system(size: 75))
                                    }
                                }
                        }
                    }
                    .overlay(alignment: .trailing) {
                        Text("FOOD")
                            .font(.title)
                            .padding(50)
                    }
                    .padding(30)
                
                
                
                // rectangle 3 holds the map section
                Rectangle()
                    .fill(Color(greyColor))
                    .frame(width: 360, height: 150)
                    .cornerRadius(60)
                    .overlay(alignment: .leading) {
                        Text("MAP")
                            .font(.title)
                            .padding(50)
                    }
                    .overlay(alignment: .trailing) {
                        NavigationLink(destination: MapView()) {
                            Circle()
                                .fill(Color(blueEarthColor))
                                .frame(height: 215)
                                .overlay() {
                                    Image(systemName: "globe.americas.fill")
                                        .foregroundColor(Color(greenEarthColor))
                                        .font(.system(size: 215))
                                }
                        }
                    }
                    .padding(30)
                        
                // rectangle 4 holds the feedback section
                RoundedRectangle(cornerRadius: 60)
                    .fill(Color(greyColor))
                    .frame(width: 360, height: 150)
                    .overlay(alignment: .leading) {
                        NavigationLink(destination: FeedbackView()) {
                            RoundedRectangle(cornerRadius: 60)
                                .fill(Color(blueEarthColor))
                                .frame(width: 210, height: 150)
                                .overlay() {
                                    Image(systemName: "message.fill")
                                        .foregroundColor(Color(.white))
                                        .font(.system(size: 105))
                                }
                        }
                    }
                    .overlay(alignment: .trailing) {
                        Text("FEEDBACK")
                            .font(.title)
                            .padding(5)
                    }
                    .padding(30)
            }
        }
        .padding(5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
