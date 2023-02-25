//
//  Unit2Lesson1.swift
//  Map Master
//
//  Created by Rostyslav on 12.02.2023.
//

import SwiftUI
public let level1unit2: [[String]] = [
    ["Egypt", "Finland", "Greece"], //1
    ["Hungary", "Iran", "India"], //2
    ["Moldova", "Norway", "Pakistan"], //3
    ["Serbia", "South Sudan", "Uganda"], //4
    ["San Marino", "Panama", "Lebanon"], //5
    ["Israel", "Japan", "Mongolia"], //6
    ["North Korea", "Philippines", "Slovenia"], //7
    ["Tunisia", "Uzbekistan", "Yemen"], //8
    ["Nepal", "Egypt", "North Macedonia"], //9
    ["Mozambique", "Mauritius", "Luxembourg"] //10
]
public let answers1unit2 = [1, 2, 2, 0, 0, 1, 2, 1, 2, 0]

struct Unit2Lesson1: View {
    @State var ball: Int = Int.random(in: 0..<countryballs.count)
    @State var isTapped: Bool = false
    @StateObject var GlobalUserData: userData
    @State var current: Int = 0
    @State var answer = 0
    @State var correct: Double = 0
    @State var show_answers = false
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
                        Text("Guess flag").font(.largeTitle).fontWeight(.heavy)
                            .foregroundColor(Color.white)
                            .padding(.bottom, -10.0)
                        CorrectProgress(correct: correct)

                        
                        Text("\(level1unit2[current][answers1unit2[current]])") .font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding(.top)
                        
                        
                        ForEach(0..<level1unit2[0].count, id: \.self){ i in
                            Button{
                                if isTapped == false{
                                    isTapped = true
                                    answer = i
                                    show_answers = true
                                    if answers1unit2[current] == i{
                                        correct = correct + 0.1
                                    }
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                                        if answers1unit2[current] != i{
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
                                        GlobalUserData.unit2[0] = true
                                        GlobalUserData.unit2Change = true
                                    }
                                }
                            }label: {
                                if show_answers == false{
                                    Image("\(level1unit2[current][i])").resizable().frame(width: UIScreen.main.bounds.width*0.5, height: UIScreen.main.bounds.width*0.35).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.bottom)
                                }else{
                                    if answers1unit2[current] == i{
                                        Color.green.overlay(
                                            Text("\(level1unit2[current][i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                        ).frame(width: UIScreen.main.bounds.width*0.5, height: UIScreen.main.bounds.width*0.35).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.bottom)
                                    }else{
                                        Color.red.overlay(
                                            Text("\(level1unit2[current][i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                        ).frame(width: UIScreen.main.bounds.width*0.5, height: UIScreen.main.bounds.width*0.35).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.bottom)
                                    }
                                }
                            }
                        }
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

struct Unit2Lesson1_Previews: PreviewProvider {
    static var previews: some View {
        Unit2Lesson1(GlobalUserData: userData())
    }
}
