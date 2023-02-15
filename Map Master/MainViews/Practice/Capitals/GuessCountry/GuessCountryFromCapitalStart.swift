//
//  GuessCountryFromCapital.swift
//  Map Master
//
//  Created by Rostyslav on 15.02.2023.
//

import SwiftUI

struct GuessCountryFromCapitalStart: View {
    @State var game_is_started: Bool = false
    @State private var animateGradient = false
    @State var answer: Int = 0
    @State var score: Int = 0
    @State var choice: Int = 2
    @StateObject var GlobalUserData: userData
    var body: some View {
        ZStack{
            MainBack()
            VStack{
                Text("Name That Capital!").fontWeight(.heavy).foregroundColor(.white).font(.system(size: 35)).padding(.bottom)

                    Image("Chad").resizable()
                        .frame(width: UIScreen.main.bounds.width*0.8, height: UIScreen.main.bounds.width*0.45).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.orange, lineWidth: 4))
                        .shadow(radius: 2).padding(.vertical)
                
                Text("Highest score: \(GlobalUserData.result_country_capital[choice-1])").fontWeight(.heavy).foregroundColor(.white).font(.system(size: 30))
                    Picker(selection: $choice, label: Text("Picker")) {
                        Text("All continents").font(.largeTitle).tag(1).foregroundColor(.white).shadow(radius: 2)
                        Text("Europe").font(.largeTitle).tag(2).foregroundColor(.white).shadow(radius: 2)
                        Text("Africa").font(.largeTitle).tag(3).foregroundColor(.white).shadow(radius: 2)
                        Text("Asia").font(.largeTitle).tag(4).foregroundColor(.white).shadow(radius: 2)
                        Text("Americas").font(.largeTitle).tag(5).foregroundColor(.white).shadow(radius: 2)
                    }.padding(.top, -30.0).pickerStyle(.wheel)
                
                Spacer()
                NavigationLink(destination: GuessCountryFromCapital(GlobalUserData: GlobalUserData, choice: choice)) {
                    Color.indigo.overlay(
                        Text("Start game").font(.system(size: 40)).fontWeight(.heavy).foregroundColor(.white)
                    ).frame(width:  UIScreen.main.bounds.width/1.3, height: UIScreen.main.bounds.height/12).cornerRadius(30).shadow(radius: 2)
                }
                Spacer()
            }
        }
    }
}

struct GuessCountryFromCapitalStart_Previews: PreviewProvider {
    static var previews: some View {
        GuessCountryFromCapitalStart(GlobalUserData: userData())
    }
}
