//
//  Lesson7.swift
//  Map Master
//
//  Created by Rostyslav on 11.02.2023.
//

import SwiftUI

public let level7: [[String]] = [
    ["United States", "120 million", "330 million"], //1
    ["Italy", "60 million", "20 million"], //2
    ["Taiwan", "140 million", "24 million"], //3
    ["Cuba", "11 million", "2 million"], //4
    ["Lithuania", "2.7 million", "6.5 million"], //5
    ["Sweden", "32 million", "10 million"], //6
    ["Iraq", "40 million" ,"5 million"], //7
    ["India", "700 million", "1400 million"], //8
    ["Ethiopia", "220 million", "115 million"], //9
    ["Germany", "84 million", "25 million"] //10
]
public let answers7 = [1, 0, 1, 0, 0, 1, 0, 1, 1, 0]

struct Lesson7: View {
    @State var isTapped: Bool = false
    @StateObject var GlobalUserData: userData
    @State var current: Int = 0
    @State var answer = 0
    @State var correct: Double = 0
    @State var ball: Int = Int.random(in: 0..<countryballs.count)
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
                        Text("Guess population").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding(.bottom, -10.0)
                        CorrectProgress(correct: correct)

                        
                        Text("\(level7[current][0])") .font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding(.top)
                        Image("\(level7[current][0])").resizable().frame(width: UIScreen.main.bounds.width*0.6, height: UIScreen.main.bounds.width*0.4).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.bottom)
                        
                        ForEach(1..<level7[0].count, id: \.self){ i in
                            Button{
                                if isTapped == false{
                                    isTapped = true
                                    show_answers = true
                                    if answers7[current] == i-1{
                                        correct = correct + 0.1
                                    }
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                                        if answers7[current] != i-1{
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
                                        GlobalUserData.unit1[6] = true
                                        GlobalUserData.unit1Change = true
                                    }
                                }
                            }label: {
                                if show_answers == false{
                                    Color.cyan.overlay(
                                        Text("\(level7[current][i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                    ).frame(width:  UIScreen.main.bounds.width*0.6, height: UIScreen.main.bounds.height/15).cornerRadius(15).padding(.vertical, 10.0).shadow(radius: 5)
                                }else{
                                    if answers7[current] == i-1{
                                        Color.green.overlay(
                                            Text("\(level7[current][i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                        ).frame(width:  UIScreen.main.bounds.width*0.6, height: UIScreen.main.bounds.height/15).cornerRadius(15).padding(.vertical, 10.0).shadow(radius: 5)
                                    }else{
                                        Color.red.overlay(
                                            Text("\(level7[current][i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                        ).frame(width:  UIScreen.main.bounds.width*0.6, height: UIScreen.main.bounds.height/15).cornerRadius(15).padding(.vertical, 10.0).shadow(radius: 5)
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

struct Lesson7_Previews: PreviewProvider {
    static var previews: some View {
        Lesson7(GlobalUserData: userData())
    }
}
