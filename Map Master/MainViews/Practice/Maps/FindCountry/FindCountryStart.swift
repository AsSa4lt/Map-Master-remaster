//
//  FindCountryStart.swift
//  Map Master
//
//  Created by Rostyslav on 15.02.2023.
//

import SwiftUI
import InteractiveMap

struct FindCountryStart: View {
    @State var game_is_started: Bool = false
    @State private var animateGradient = false
    @State var answer: Int = 0
    @State var score: Int = 0
    @State var choice: Int = 3

    @StateObject var GlobalUserData: userData
    var body: some View {
        ZStack{
            MainBack()
            VStack{
                Text("Find that country!").fontWeight(.heavy).foregroundColor(.white).font(.system(size: 35))
                InteractiveMap(svgName: "world-low") { pathData in // or just use $0
                            InteractiveShape(pathData)
                        .initWithAttributes(.init(strokeWidth: 0.3, strokeColor: .black, background: Color(white: 1)))
                        }.frame(width: UIScreen.main.bounds.width*0.92, height: UIScreen.main.bounds.width*0.6).cornerRadius(15)
                
                
                Text("Highest score: \(GlobalUserData.result_find_countries[choice-1])").fontWeight(.heavy).foregroundColor(.white).font(.system(size: 30))
                Picker(selection: $choice, label: Text("Picker")) {
                    Text("60 seconds").font(.largeTitle).tag(1).foregroundColor(.white).shadow(radius: 2)
                    Text("120 seconds").font(.largeTitle).tag(2).foregroundColor(.white).shadow(radius: 2)
                    Text("5 minutes").font(.largeTitle).tag(3).foregroundColor(.white).shadow(radius: 2)
                    Text("10 minutes").font(.largeTitle).tag(4).foregroundColor(.white).shadow(radius: 2)
                    Text("20 minutes").font(.largeTitle).tag(5).foregroundColor(.white).shadow(radius: 2)
                }.padding(.top, -30.0).pickerStyle(.wheel)
                Spacer()
                NavigationLink(destination: FindCountryGamePractice(GlobalUserData: GlobalUserData, choice: choice)) {
                    Color.indigo.overlay(
                        Text("Start game").font(.system(size: 40)).fontWeight(.heavy).foregroundColor(.white)
                    ).frame(width:  UIScreen.main.bounds.width/1.3, height: UIScreen.main.bounds.height/12).cornerRadius(30)
                }
                Spacer()
            }
        }
    }
}

struct FindCountryStart_Previews: PreviewProvider {
    static var previews: some View {
        FindCountryStart(GlobalUserData: userData())
    }
}
