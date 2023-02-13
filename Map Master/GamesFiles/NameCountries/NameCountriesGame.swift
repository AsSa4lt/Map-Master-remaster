//
//  NameCountriesGame.swift
//  Map Master
//
//  Created by Rostyslav on 06.02.2023.
//

import SwiftUI
import InteractiveMap

struct NameCountriesGame: View {
    @StateObject var GlobalUserData: userData
    @State private var animateGradient = false
    @State var choice: Int
    @State var before_game: Int = 3
    @State var score: Int = 0
    @State private var clickedPath: [PathData] = []
    @State var timeLeft: Double = 600.00
    @State private var animateGradient1 = false
    @State var answer: String = ""
    @State var answers = all_names
    @State var task: [String] = ["","",""]
    var timer = Timer.publish(every: 0.015, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack(alignment: .center){
            TextField("Enter country", text: $answer).multilineTextAlignment(.center)
            Button("Enter") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                for i in 0..<answers.count{
                    for j in 0..<answers[i].count{
                        if answer == answers[i][j]{
                            clickedPath.append(PathData(name: "\(answers[i][0])", id: "\(answers[i][0])", path: []))
                            score = score + 1
                        }
                    }
                }
                answer = ""
            }
            
            Text("\(score)")
            InteractiveMap(svgName: "world-low") { pathData in // is a PathData
                if clickedPath.contains(pathData){
                    InteractiveShape(pathData)
                        .stroke(.green, lineWidth: 0.8)
                    // to increase the glow amount
                        .background(InteractiveShape(pathData).fill(Color(.green))) // filling the shapes
                        .shadow(color: .clear , radius: 5, y: 1) // for depth
                }else{
                    InteractiveShape(pathData)
                        .stroke(.red, lineWidth: 0.5)
                    // to increase the glow amount
                        .background(InteractiveShape(pathData).fill(Color(.red))) // filling the shapes
                        .shadow(color: .clear , radius: 5, y: 1) // for depth
                }

            }
            
            
        }
    }
}

struct NameCountriesGame_Previews: PreviewProvider {
    static var previews: some View {
        NameCountriesGame(GlobalUserData: userData(), choice: Int())
    }
}
