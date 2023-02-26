//
//  PeopleButton.swift
//  Map Master
//
//  Created by Rostyslav on 26.02.2023.
//

import SwiftUI

struct PeopleButton: View {
    @Binding var isTapped: Bool
    @StateObject var GlobalUserData: userData
    @Binding var current: Int
    @Binding var answer: Int
    @Binding var correct: Double
    @Binding var show_answers: Bool
    @State var answers: [Int]
    @State var level: [[String]]
    @Binding var what_to_change: Bool
    @Binding var unit_change: Bool
    var body: some View {
        if current < 10{
            VStack{
                ForEach(1..<level[0].count, id: \.self){ i in
                    Button{
                        if isTapped == false{
                            isTapped = true
                            show_answers = true
                            if answers[current] == i-1{
                                correct = correct + 0.1
                            }
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                                if answers[current] != i-1{
                                    GlobalUserData.hearts = GlobalUserData.hearts - 1
                                    if GlobalUserData.hearts <= 0{
                                        current = 10
                                    }
                                }
                                current = current + 1
                                show_answers = false
                                isTapped = false
                            }
                            if correct >= 0.7{
                                what_to_change = true
                                unit_change = true
                            }
                        }
                    }label: {
                        if show_answers == false{
                            Color.cyan.overlay(
                                Text("\(level[current][i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                            ).frame(width:  UIScreen.main.bounds.width*0.6, height: UIScreen.main.bounds.height/15).cornerRadius(15).padding(.vertical, 10.0).shadow(radius: 5)
                        }else{
                            if answers[current] == i-1{
                                Color.green.overlay(
                                    Text("\(level[current][i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                ).frame(width:  UIScreen.main.bounds.width*0.6, height: UIScreen.main.bounds.height/15).cornerRadius(15).padding(.vertical, 10.0).shadow(radius: 5)
                            }else{
                                Color.red.overlay(
                                    Text("\(level[current][i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                ).frame(width:  UIScreen.main.bounds.width*0.6, height: UIScreen.main.bounds.height/15).cornerRadius(15).padding(.vertical, 10.0).shadow(radius: 5)
                            }
                        }
                    }
                }
            }
        }
    }
}

