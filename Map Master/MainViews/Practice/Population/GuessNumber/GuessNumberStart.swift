//
//  GuessNumberStart.swift
//  Map Master
//
//  Created by Rostyslav on 15.02.2023.
//

import SwiftUI

struct GuessNumberStart: View {
    @State var game_is_started: Bool = false
    @State var answer: Int = 0
    @State var score: Int = 0
    @State var choice: Int = 2
    @StateObject var GlobalUserData: userData
    var body: some View {
        ZStack{
            MainBack()
            VStack{
                Text("Guess country population").fontWeight(.heavy).foregroundColor(.white).font(.system(size: 30))
                HStack{
                    Image("China").resizable().frame(width: UIScreen.main.bounds.width*0.4, height: UIScreen.main.bounds.width*0.25).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding([.top, .bottom, .trailing])
                    Spacer()
                    Image(systemName: "person.3.fill").resizable().frame(width: UIScreen.main.bounds.width*0.4, height: UIScreen.main.bounds.width*0.18).foregroundColor(.white)
                    
                }.frame(width: UIScreen.main.bounds.width*0.85)
                HStack{
                    Image("San Marino").resizable().frame(width: UIScreen.main.bounds.width*0.4, height: UIScreen.main.bounds.width*0.25).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding([.top, .bottom, .trailing])
                    Spacer()
                    Image(systemName: "person.fill").resizable().frame(width: UIScreen.main.bounds.width*0.2, height: UIScreen.main.bounds.width*0.18).foregroundColor(.white)
                    Spacer()
                }.frame(width: UIScreen.main.bounds.width*0.85)
                
                Text("Highest score: \(GlobalUserData.result_country_population[choice-1])").fontWeight(.heavy).foregroundColor(.white).font(.system(size: 30))
                Picker(selection: $choice, label: Text("Picker")) {
                    Text("All continents").font(.largeTitle).tag(1).foregroundColor(.white)
                    Text("Europe").font(.largeTitle).tag(2).foregroundColor(.white)
                    Text("Africa").font(.largeTitle).tag(3).foregroundColor(.white)
                    Text("Asia").font(.largeTitle).tag(4).foregroundColor(.white)
                    Text("Americas").font(.largeTitle).tag(5).foregroundColor(.white)
                }.padding(.top, -30.0).pickerStyle(.wheel)
                Spacer()
                NavigationLink(destination: GuessNumberGame(GlobalUserData: GlobalUserData, choice: choice)) {
                    Color.indigo.overlay(
                        Text("Start game").font(.system(size: 40)).fontWeight(.heavy).foregroundColor(.white)
                    ).frame(width:  UIScreen.main.bounds.width/1.3, height: UIScreen.main.bounds.height/12).cornerRadius(30)
                }
                Spacer()
            }
        }
    }
}

struct GuessNumberStart_Previews: PreviewProvider {
    static var previews: some View {
        GuessNumberStart(GlobalUserData: userData())
    }
}
