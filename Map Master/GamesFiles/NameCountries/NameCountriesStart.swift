//
//  NameCountriesStart.swift
//  Map Master
//
//  Created by Rostyslav on 06.02.2023.
//

import SwiftUI
import InteractiveMap
struct NameCountriesStart: View {
    @State var game_is_started: Bool = false
    @State private var animateGradient = false
    @State var answer: Int = 0
    @State var score: Int = 0
    @State var choice: Int = 3
    @State private var clickedPath = PathData()
    @StateObject var GlobalUserData: userData
    var body: some View {
            VStack{
                Text("Name all countries!").fontWeight(.heavy).foregroundColor(.white).font(.system(size: 35)).padding(.top)
                InteractiveMap(svgName: "world-low") { pathData in // is a PathData
                    InteractiveShape(pathData)
                        .stroke(clickedPath == pathData ? .cyan : .red, lineWidth: 0.5)
                    // to increase the glow amount
                        .background(InteractiveShape(pathData).fill(Color(white: 0.9))) // filling the shapes
                        .shadow(color: clickedPath == pathData ? .black : .clear , radius: 5, y: 1) // for depth
                    
                        .onTapGesture {
                            clickedPath = pathData
                        }
                        .zIndex(clickedPath == pathData ? 2 : 1) // this is REQUIRED because InteractiveShapes overlap, resulting in an ugly appearance
                        .animation(.easeInOut(duration: 0.3), value: clickedPath)
                }

                Text("Highest score: \(GlobalUserData.result_name_countries[choice-1])").fontWeight(.heavy).foregroundColor(.white).font(.system(size: 30))
                Picker(selection: $choice, label: Text("Picker")) {
                    Text("30-second game").font(.largeTitle).tag(1).foregroundColor(.white)
                    Text("1-minute game").font(.largeTitle).tag(2).foregroundColor(.white)
                    Text("5-minute game").font(.largeTitle).tag(3).foregroundColor(.white)
                    Text("10-minute game").font(.largeTitle).tag(4).foregroundColor(.white)
                    Text("20-minute game").font(.largeTitle).tag(5).foregroundColor(.white)
                }.padding(.top, -30.0).pickerStyle(.wheel)
                
                NavigationLink(destination: NameCountriesGame(GlobalUserData: GlobalUserData, choice: choice)) {
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

struct NameCountriesStart_Previews: PreviewProvider {
    static var previews: some View {
        NameCountriesStart(GlobalUserData: userData())
    }
}
