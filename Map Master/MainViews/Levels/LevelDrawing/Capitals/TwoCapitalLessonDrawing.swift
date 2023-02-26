//
//  TwoCapitalLessonDrawing.swift
//  Map Master
//
//  Created by Rostyslav on 26.02.2023.
//

import SwiftUI

struct TwoCapitalLessonDrawing: View {
    @State var isTapped: Bool = false
    @StateObject var GlobalUserData: userData
    @State var current: Int = 0
    @State var answer = 0
    @State var answers: [Int]
    @State var level: [[String]]
    @State var ball: Int = Int.random(in: 0..<countryballs.count)
    @State var correct: Double = 0
    @State var show_answers = false
    @Binding var unit_bool_change: Bool
    @Binding var unit_change: Bool
    var body: some View {
        ZStack{
            LessonsBack()
            VStack{
                if current < 10{
                    VStack{
                        HStack{
                            Text("Question \(current+1)/10").font(.title).fontWeight(.heavy)
                                .foregroundColor(Color.white)
                            Image(systemName: "heart.fill").resizable().frame(width: 30, height: 25).foregroundColor(.red).padding(.leading)
                            Text("\(GlobalUserData.hearts)").font(.title).fontWeight(.heavy).foregroundColor(.red)
                            
                        }
                        Text("Guess capital").font(.largeTitle).fontWeight(.heavy)
                            .foregroundColor(Color.white)
                            .padding(.bottom, -10.0)
                        CorrectProgress(correct: correct)

                        
                        Text("\(level[current][0])") .font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding(.top)
                        Image("\(level[current][0])").resizable().frame(width: UIScreen.main.bounds.width*0.6, height: UIScreen.main.bounds.width*0.4).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.bottom)
                        
                        TwoCapitalsButton(isTapped: $isTapped, GlobalUserData: GlobalUserData, current: $current, answer: $answer, correct: $correct, show_answers: $show_answers, answers: answers, level: level, what_to_change: $unit_bool_change, unit_change: $unit_change)
                    }.padding()
                        .frame(width: UIScreen.main.bounds.width*0.95)
                        .foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
                        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
                    Spacer()
                }else{
                    EndOfLesson(correct:correct, ball: ball, hearts: GlobalUserData.hearts)
                }
            }
        }
    }
}


