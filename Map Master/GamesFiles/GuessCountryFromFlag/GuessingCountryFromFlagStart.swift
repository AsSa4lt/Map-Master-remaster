//
//  LigthGuessing.swift
//  Map Master
//
//  Created by Rostyslav on 31.01.2023.
//

import SwiftUI

struct GuessingCountryFromFlagStart: View {
    @State var game_is_started: Bool = false
    @State private var animateGradient = false
    @State var answer: Int = 0
    @State var score: Int = 0
    @State var choice: Int = 2
    @StateObject var GlobalUserData: userData
    var body: some View {
            VStack{
                Text("Name That World Flag!").fontWeight(.heavy).foregroundColor(.white).font(.system(size: 35)).padding(.vertical)
                if choice == 1{
                    Image("Australia").resizable()
                        .frame(width: UIScreen.main.bounds.width*0.8, height: UIScreen.main.bounds.width*0.45).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.orange, lineWidth: 4))
                        .shadow(radius: 2).padding(.vertical)
                }else if choice == 2{
                    Image("Ukraine").resizable()
                        .frame(width: UIScreen.main.bounds.width*0.8, height: UIScreen.main.bounds.width*0.45).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.orange, lineWidth: 4))
                        .shadow(radius: 2).padding(.vertical)
                }else if choice == 3{
                    Image("Egypt").resizable()
                        .frame(width: UIScreen.main.bounds.width*0.8, height: UIScreen.main.bounds.width*0.45).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.orange, lineWidth: 4))
                        .shadow(radius: 2).padding(.vertical)
                }else if choice == 4{
                    Image("Kazakhstan").resizable()
                        .frame(width: UIScreen.main.bounds.width*0.8, height: UIScreen.main.bounds.width*0.45).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.orange, lineWidth: 4))
                        .shadow(radius: 2).padding(.vertical)
                }else if choice == 5{
                    Image("Canada").resizable()
                        .frame(width: UIScreen.main.bounds.width*0.8, height: UIScreen.main.bounds.width*0.45).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.orange, lineWidth: 4))
                        .shadow(radius: 2).padding(.vertical)
                }
                Text("Highest score: \(GlobalUserData.result_flag_light[choice-1])").fontWeight(.heavy).foregroundColor(.white).font(.system(size: 30))
                Picker(selection: $choice, label: Text("Picker")) {
                    Text("All continents").font(.largeTitle).tag(1).foregroundColor(.white)
                    Text("Europe").font(.largeTitle).tag(2).foregroundColor(.white)
                    Text("Africa").font(.largeTitle).tag(3).foregroundColor(.white)
                    Text("Asia").font(.largeTitle).tag(4).foregroundColor(.white)
                    Text("Americas").font(.largeTitle).tag(5).foregroundColor(.white)
                }.padding(.top, -30.0).pickerStyle(.wheel)
                
                NavigationLink(destination: GuessingCountryFromFlagGame(GlobalUserData: GlobalUserData, choice: choice)) {
                    Color.mint.overlay(
                        Text("Start game").font(.system(size: 40)).fontWeight(.heavy).foregroundColor(.white)
                    ).frame(width:  UIScreen.main.bounds.width/1.3, height: UIScreen.main.bounds.height/12).cornerRadius(30)
                }
                Spacer()
            }.background(
                LinearGradient(gradient: Gradient(colors: [Color(hex: 0x26527C), Color(hex: 0x20805E)]), startPoint: animateGradient ? .topLeading : .bottomLeading, endPoint: animateGradient ? .bottomTrailing : .topTrailing).ignoresSafeArea().frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height).onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.01) {
                        withAnimation(.linear(duration: 5).repeatForever(autoreverses: true)) {
                            animateGradient.toggle()
                        }
                    }
                }
            )
    }
}

struct GuessingCountryFromFlagStart_Previews: PreviewProvider {
    static var previews: some View {
        GuessingCountryFromFlagStart(GlobalUserData: userData())
    }
}
