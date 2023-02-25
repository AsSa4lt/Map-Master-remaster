//
//  Lesson3.swift
//  Map Master
//
//  Created by Rostyslav on 11.02.2023.
//

import SwiftUI
public let level3: [[String]] = [
    ["Mexico", "Iceland"], //1
    ["Greece", "Croatia"], //2
    ["Austria", "Turkey"], //3
    ["Bulgaria", "Estonia"], //4
    ["Iran", "Australia"], //5
    ["New Zealand", "Colombia"], //6
    ["Norway", "United Kingdom"], //7
    ["Italy", "Iraq"], //8
    ["Finland", "Ukraine"], //9
    ["Slovenia", "Spain"] //10
]
public let answers3 = [ 1, 0, 0, 1, 1, 0, 1, 0, 0, 1 ]

struct Lesson3: View {
    @State var isTapped: Bool = false
    @StateObject var GlobalUserData: userData
    @State var current: Int = 0
    @State var answer = 0
    @State var correct: Double = 0
    @State var show_answers = false
    @State var ball: Int = Int.random(in: 0..<countryballs.count)
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
                        
                        Text("\(level3[current][answers3[current]])") .font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding(.top)
                        
                        
                        ForEach(0..<level3[0].count, id: \.self){ i in
                            Button{
                                if isTapped == false{
                                    isTapped = true
                                    answer = i
                                    show_answers = true
                                    if answers3[current] == i{
                                        correct = correct + 0.1
                                    }
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                                        if answers3[current] != i{
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
                                        GlobalUserData.unit1[2] = true
                                        GlobalUserData.unit1Change = true
                                    }
                                }
                            }label: {
                                if show_answers == false{
                                    Image("\(level3[current][i])").resizable().frame(width: UIScreen.main.bounds.width*0.6, height: UIScreen.main.bounds.width*0.4).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.bottom)
                                }else{
                                    if answers3[current] == i{
                                        Color.green.overlay(
                                            Text("\(level3[current][i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                        ).frame(width: UIScreen.main.bounds.width*0.6, height: UIScreen.main.bounds.width*0.4).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.bottom)
                                    }else{
                                        Color.red.overlay(
                                            Text("\(level3[current][i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                        ).frame(width: UIScreen.main.bounds.width*0.6, height: UIScreen.main.bounds.width*0.4).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.bottom)
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

struct Lesson3_Previews: PreviewProvider {
    static var previews: some View {
        Lesson3(GlobalUserData: userData())
    }
}
