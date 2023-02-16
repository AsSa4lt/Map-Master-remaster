//
//  RatingGamesInactive.swift
//  Map Master
//
//  Created by Rostyslav on 16.02.2023.
//

import Foundation
import SwiftUI

@ViewBuilder
func RatingGamesInactive(GlobalUserData: userData) -> some View{
    VStack{
        Text("Map games").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding(.bottom, 5.0)
        RatingPanel(game_description: "Name Country", game_time: "Time: 10 minutes", score: GlobalUserData.rating_name_country, image_name: "Greece", color: Color(hex: 0x3645)).opacity(0.3)

        RatingPanel(game_description: "Find Country", game_time: "Time: 10 minutes", score: GlobalUserData.rating_find_country, image_name: "Greenland", color: Color(hex: 0x3645)).opacity(0.3)
        RatingPanel(game_description: "US States", game_time: "Time: 3 minutes", score: GlobalUserData.rating_find_states, image_name: "United States", color: Color(hex: 0x3645)).opacity(0.3)

    }.padding()
        .frame(width: UIScreen.main.bounds.width*0.95)
        .foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
    
    VStack{
        Text("Flags").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding(.bottom, 5.0)
        RatingPanel(game_description: "Guess Country", game_time: "Time: 60 seconds", score: GlobalUserData.rating_flag_country, image_name: "Canada", color: .cyan).opacity(0.3)
        RatingPanel(game_description: "Guess Flag", game_time: "Time: 60 seconds", score: GlobalUserData.rating_country_flag, image_name: "Ukraine", color: .cyan).opacity(0.3)
        
    }.padding()
        .frame(width: UIScreen.main.bounds.width*0.95)
        .foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
    
    
    VStack{
        Text("Capitals").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding(.bottom, 5.0)
        RatingPanel(game_description: "Guess Country", game_time: "Time: 90 seconds", score: GlobalUserData.rating_capital_country, image_name: "Czechia", color: .indigo).opacity(0.3)
        RatingPanel(game_description: "Guess Capital", game_time: "Time: 90 seconds", score: GlobalUserData.rating_country_capital, image_name: "Mexico", color: .indigo).opacity(0.3)
    }.padding().frame(width: UIScreen.main.bounds.width*0.95).foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
    
    VStack{
        Text("Borders").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding(.bottom, 5.0)
        RatingPanel(game_description: "Guess Country", game_time: "Time: 120 seconds", score: GlobalUserData.rating_border_country, image_name: "France", color: Color(hex: 0xb42315)).opacity(0.3)
        RatingPanel(game_description: "Guess Border", game_time: "Time: 120 seconds", score: GlobalUserData.rating_country_border, image_name: "Denmark", color: Color(hex: 0xb42315)).opacity(0.3)
        
    }.padding()
        .frame(width: UIScreen.main.bounds.width*0.95)
        .foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
}
