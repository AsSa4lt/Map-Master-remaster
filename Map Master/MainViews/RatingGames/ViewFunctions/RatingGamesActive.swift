//
//  RatingGamesActive.swift
//  Map Master
//
//  Created by Rostyslav on 16.02.2023.
//

import Foundation
import SwiftUI

@ViewBuilder
func RatingGamesActive(GlobalUserData: userData) -> some View{
    VStack{
        Text("Map games").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding(.bottom, 5.0)
        NavigationLink(destination: RatingGameNameAllCountries(GlobalUserData: GlobalUserData)) {
            RatingPanel(game_description: "Name Country", game_time: "Time: 10 minutes", score: GlobalUserData.rating_name_country, image_name: "Greece", color: Color(hex: 0x3645))
        }
        NavigationLink(destination: RatingGameFindCountries(GlobalUserData: GlobalUserData)) {
            RatingPanel(game_description: "Find Country", game_time: "Time: 10 minutes", score: GlobalUserData.rating_find_country, image_name: "Greenland", color: Color(hex: 0x3645))
        }
        NavigationLink(destination: RatingGameUSStates(GlobalUserData: GlobalUserData)) {
            RatingPanel(game_description: "US States", game_time: "Time: 3 minutes", score: GlobalUserData.rating_find_states, image_name: "United States", color: Color(hex: 0x3645))
        }
    }.padding()
        .frame(width: UIScreen.main.bounds.width*0.95)
        .foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
    
    VStack{
        Text("Flags").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding(.bottom, 5.0)
        NavigationLink(destination: RatingGameFlagOfCountry(GlobalUserData: GlobalUserData)) {
            RatingPanel(game_description: "Guess Country", game_time: "Time: 60 seconds", score: GlobalUserData.rating_flag_country, image_name: "Canada", color: .cyan)
        }
        NavigationLink(destination: RatingGameFlagOfCountry(GlobalUserData: GlobalUserData)) {
            RatingPanel(game_description: "Guess Flag", game_time: "Time: 60 seconds", score: GlobalUserData.rating_country_flag, image_name: "Ukraine", color: .cyan)
        }
    }.padding()
        .frame(width: UIScreen.main.bounds.width*0.95)
        .foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
    
    
    VStack{
        Text("Capitals").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding(.bottom, 5.0)
        NavigationLink(destination: RatingGameCountryOfCapital(GlobalUserData: GlobalUserData)) {
            RatingPanel(game_description: "Guess Country", game_time: "Time: 90 seconds", score: GlobalUserData.rating_capital_country, image_name: "Czechia", color: .indigo)
        }
        NavigationLink(destination: RatingGameCapitalOfCountry(GlobalUserData: GlobalUserData)) {
            RatingPanel(game_description: "Guess Capital", game_time: "Time: 90 seconds", score: GlobalUserData.rating_country_capital, image_name: "Mexico", color: .indigo)
        }   
    }.padding().frame(width: UIScreen.main.bounds.width*0.95).foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
    
    VStack{
        Text("Borders").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding(.bottom, 5.0)
        NavigationLink(destination: RatingGameCountryOfBorder(GlobalUserData: GlobalUserData)) {
            RatingPanel(game_description: "Guess Country", game_time: "Time: 120 seconds", score: GlobalUserData.rating_border_country, image_name: "France", color: Color(hex: 0xb42315))
        }
        NavigationLink(destination: RatingGameBorderOfCountry(GlobalUserData: GlobalUserData)) {
            RatingPanel(game_description: "Guess Border", game_time: "Time: 120 seconds", score: GlobalUserData.rating_country_border, image_name: "Denmark", color: Color(hex: 0xb42315))
        }
    }.padding()
        .frame(width: UIScreen.main.bounds.width*0.95)
        .foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
}
