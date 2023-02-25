//
//  Unit4Lesson13.swift
//  Map Master
//
//  Created by Rostyslav on 13.02.2023.
//

import SwiftUI
public let unit4level13: [[String]] = [
["Armenia",  "Yerevan", "Naypyidaw", "Islamabad"], //1
["Estonia", "Seoul", "Manila", "Tallinn"], //2
["Denmark", "Copenhagen", "Damascus", "Pyongyang"], //3
["Angola", "Helsinki", "Luanda", "Ljubljana"], //4
["Nigeria", "Bern",  "Abuja", "Stockholm"], //5
["Serbia", "Luxembourg", "Kishinev", "Belgrade"], //6
["Senegal", "Dakar", "Bangkok", "Riga"], //7
["Latvia", "Gaborone", "Riga", "Nairobi"], //8
["Mauritania", "Maseru", "Quito", "Nouakchott"], //9
["Greenland", "Nuuk", "Brasilia", "Noumea"] //10
]
public let unit4answers13 = [0, 2, 0, 1, 1, 2, 0, 1, 2, 0]

struct Unit4Lesson13: View {
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
                        Text("Guess capital").font(.largeTitle).fontWeight(.heavy)
                            .foregroundColor(Color.white)
                            .padding(.bottom, -10.0)
                        CorrectProgress(correct: correct)

                        Text("\(unit4level13[current][0])") .font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding(.top)
                        Image("\(unit4level13[current][0])").resizable().frame(width: UIScreen.main.bounds.width*0.6, height: UIScreen.main.bounds.width*0.4).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.bottom)
                        
                        ForEach(1..<unit4level13[0].count, id: \.self){ i in
                            Button{
                                if isTapped == false{
                                    isTapped = true
                                    show_answers = true
                                    if unit4answers13[current] == i-1{
                                        correct = correct + 0.1
                                    }
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                                        if unit4answers13[current] != i-1{
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
                                        GlobalUserData.unit4[12] = true
                                        GlobalUserData.unit4Change = true
                                    }
                                }
                            }label: {
                                if show_answers == false{
                                    Color.cyan.overlay(
                                        Text("\(unit4level13[current][i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                    ).frame(width:  UIScreen.main.bounds.width*0.6, height: UIScreen.main.bounds.height/15).cornerRadius(15).padding(.vertical, 10.0).shadow(radius: 5)
                                }else{
                                    if unit4answers13[current] == i-1{
                                        Color.green.overlay(
                                            Text("\(unit4level13[current][i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                        ).frame(width:  UIScreen.main.bounds.width*0.6, height: UIScreen.main.bounds.height/15).cornerRadius(15).padding(.vertical, 10.0).shadow(radius: 5)
                                    }else{
                                        Color.red.overlay(
                                            Text("\(unit4level13[current][i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
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

struct Unit4Lesson13_Previews: PreviewProvider {
    static var previews: some View {
        Unit4Lesson13(GlobalUserData: userData())
    }
}
