//
//  GuessCountryByBorder.swift
//  Map Master
//
//  Created by Rostyslav on 03.02.2023.
//

import SwiftUI
import InteractiveMap

struct GuessCountryByBorderStart: View {
    @State var game_is_started: Bool = false
    @State private var animateGradient = false
    @State var answer: Int = 0
    @State var score: Int = 0
    @State var choice: Int = 2
    @State private var clickedPath = PathData()

    @StateObject var GlobalUserData: userData
    var body: some View {
        ZStack{
            MainBack()
            VStack{
                Text("Guess that border!").fontWeight(.heavy).foregroundColor(.white).font(.system(size: 35))
                Image("United StatesB").resizable().frame(width: UIScreen.main.bounds.width*0.6, height: UIScreen.main.bounds.width*0.6).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.vertical)
                
                
                Text("Highest score: \(GlobalUserData.result_border_country[choice-1])").fontWeight(.heavy).foregroundColor(.white).font(.system(size: 30))
                Picker(selection: $choice, label: Text("Picker")) {
                    Text("All continents").font(.largeTitle).tag(1).foregroundColor(.white).shadow(radius: 2)
                    Text("Europe").font(.largeTitle).tag(2).foregroundColor(.white).shadow(radius: 2)
                    Text("Africa").font(.largeTitle).tag(3).foregroundColor(.white).shadow(radius: 2)
                    Text("Asia").font(.largeTitle).tag(4).foregroundColor(.white).shadow(radius: 2)
                    Text("Americas").font(.largeTitle).tag(5).foregroundColor(.white).shadow(radius: 2)
                }.padding(.top, -30.0).pickerStyle(.wheel)
                Spacer()
                NavigationLink(destination: GuessCountryByBorderGame(GlobalUserData: GlobalUserData, choice: choice)) {
                    Color.indigo.overlay(
                        Text("Start game").font(.system(size: 40)).fontWeight(.heavy).foregroundColor(.white)
                    ).frame(width:  UIScreen.main.bounds.width/1.3, height: UIScreen.main.bounds.height/12).cornerRadius(30)
                }
                Spacer()
            }
        }
    }
}




struct GuessCountryByBorderStart_Previews: PreviewProvider {
    static var previews: some View {
        GuessCountryByBorderStart(GlobalUserData: userData())
    }
}
