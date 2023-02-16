//
//  Practice.swift
//  Map Master
//
//  Created by Rostyslav on 15.02.2023.
//

import SwiftUI

struct Practice: View {
    @StateObject var GlobalUserData: userData
    var body: some View {
            ZStack{
                MainBack()
                ScrollView(showsIndicators: false){
                    Text("Skill Builder").foregroundColor(Color.white).fontWeight(.heavy).font(.system(size: 47))
                    VStack{
                        Text("Flags").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding(.bottom, 5.0)
                        NavigationLink(destination: GuessingCountryFromFlagStart(GlobalUserData: GlobalUserData)) {
                            PanelPractice(text_game: "Guess county", image_game: "Canada", color_game: .indigo)
                        }
                        NavigationLink(destination: GuessingFlagFromCountryStart(GlobalUserData: GlobalUserData)) {
                            PanelPractice(text_game: "Guess Flag", image_game: "United Kingdom", color_game: .indigo)
                        }
                    }.padding()
                        .frame(width: UIScreen.main.bounds.width*0.95)
                        .foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
                        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
                    
                    VStack{
                        Text("Capitals").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding(.bottom, 5.0)
                        NavigationLink(destination: GuessCapitalOfCoutryStart(GlobalUserData: GlobalUserData)) {
                            PanelPractice(text_game: "Guess Capital", image_game: "Mexico", color_game: .cyan)

                        }
                        NavigationLink(destination: GuessCountryFromCapitalStart(GlobalUserData: GlobalUserData)) {
                            PanelPractice(text_game: "Guess Country", image_game: "Ukraine", color_game: .cyan)
                        }
                    }.padding()
                        .frame(width: UIScreen.main.bounds.width*0.95)
                        .foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
                        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
                    
                    VStack{
                        Text("Borders").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding(.bottom, 5.0)
                        NavigationLink(destination: GuessCountryByBorderStart(GlobalUserData: GlobalUserData)) {
                            PanelPractice(text_game: "Guess Border", image_game: "Czechia", color_game: Color(hex: 0x3645))
                        }
                        NavigationLink(destination: GuessCountryFromBorder(GlobalUserData: GlobalUserData)) {
                            PanelPractice(text_game: "Guess Country", image_game: "Finland", color_game: Color(hex: 0x3645))
                        }
                    }.padding()
                        .frame(width: UIScreen.main.bounds.width*0.95)
                        .foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
                        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
                    
                    VStack{
                        Text("Population").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding(.bottom, 5.0)
                        NavigationLink(destination: GuessNumberStart(GlobalUserData: GlobalUserData)) {
                            PanelPractice(text_game: "Guess Number", image_game: "Iceland", color_game: Color(hex: 0xb42315))
                        }
                        NavigationLink(destination: GuessMostPopulatedCountryStart(GlobalUserData: GlobalUserData)) {
                            PanelPractice(text_game: "Guess Country", image_game: "Ireland", color_game: Color(hex: 0xb42315))
                        }
                    }.padding()
                        .frame(width: UIScreen.main.bounds.width*0.95)
                        .foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
                        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
                    
                    VStack{
                        Text("Maps").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding(.bottom, 5.0)
                        NavigationLink(destination: FindCountryStart(GlobalUserData: GlobalUserData)) {
                            PanelPractice(text_game: "Find Country", image_game: "Angola", color_game: Color(hex: 0xb423))

                        }
                        NavigationLink(destination: NameCountryStart(GlobalUserData: GlobalUserData)) {
                            PanelPractice(text_game: "Name Country", image_game: "Argentina", color_game: Color(hex: 0xb423))
                        }
                        NavigationLink(destination: UnitedStatesStart(GlobalUserData: GlobalUserData)) {
                            PanelPractice(text_game: "US States", image_game: "United States", color_game: Color(hex: 0xb423))
                        }
                    }.padding()
                        .frame(width: UIScreen.main.bounds.width*0.95)
                        .foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
                        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
                }.mask(
                    VStack(spacing: 0) {

                        // Top gradient
                        LinearGradient(gradient:
                           Gradient(
                               colors: [Color.black.opacity(0), Color.black]),
                               startPoint: .top, endPoint: .bottom
                           )
                           .frame(height: 10)

                        // Middle
                        Rectangle().fill(Color.black)

                        // Bottom gradient

                    }
                )
            }
        }
    
}

struct Practice_Previews: PreviewProvider {
    static var previews: some View {
        Practice(GlobalUserData: userData())
    }
}
