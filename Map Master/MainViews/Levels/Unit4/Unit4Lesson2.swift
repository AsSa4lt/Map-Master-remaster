//
//  Unit4Lesson2.swift
//  Map Master
//
//  Created by Rostyslav on 13.02.2023.
//

import SwiftUI
public let level2unit4: [[String]] = [
    ["Malaysia", "Ukraine", "Austria"],
    ["Syria", "Isle of Man", "Albania"],
    ["Turkey", "Gibraltar", "Israel"],
    ["Kazakhstan", "Norway", "Maldives"],
    ["Estonia", "Iceland", "Slovenia"],
    ["Laos", "Cyprus", "Andorra"],
    ["Mauritius", "Monaco", "Sudan"],
    ["Uruguay", "Niger", "Cameroon"],
    ["Madagascar", "Georgia", "Armenia"],
    ["Tunisia", "Bahrain", "Mali"]
    ]
public let answers2unit4 = [0, 1, 2, 1, 2, 0, 2, 1, 0, 0]

struct Unit4Lesson2: View {
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
                        Text("Guess country").font(.largeTitle).fontWeight(.heavy)
                            .foregroundColor(Color.white)
                            .padding(.bottom, -10.0)
                        CorrectProgress(correct: correct)

                        Image("\(level2unit4[current][answers2unit4[current]])").resizable().frame(width: UIScreen.main.bounds.width*0.6, height: UIScreen.main.bounds.width*0.4).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.bottom, 50.0).padding(.top)
                        
                        
                        ForEach(0..<level2unit4[0].count, id: \.self){ i in
                            Button{
                                if isTapped == false{
                                    isTapped = true
                                    answer = i
                                    show_answers = true
                                    if answers2unit4[current] == i{
                                        correct = correct + 0.1
                                    }
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                                        if answers2unit4[current] != i{
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
                                        GlobalUserData.unit4[1] = true
                                        GlobalUserData.unit4Change = true
                                    }
                                }
                            }label: {
                                if show_answers == false{
                                    Color.indigo.overlay(
                                        Text("\(level2unit4[current][i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                    ).frame(width: UIScreen.main.bounds.width*0.6, height: UIScreen.main.bounds.width*0.15).cornerRadius(20).overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.bottom)
                                }else{
                                    if answers2unit4[current] == i{
                                        Color.green.overlay(
                                            Text("\(level2unit4[current][i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                        ).frame(width: UIScreen.main.bounds.width*0.6, height: UIScreen.main.bounds.width*0.15).cornerRadius(20).overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.bottom)
                                    }else{
                                        Color.red.overlay(
                                            Text("\(level2unit4[current][i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                        ).frame(width: UIScreen.main.bounds.width*0.6, height: UIScreen.main.bounds.width*0.15).cornerRadius(20).overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.bottom)
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

struct Unit4Lesson2_Previews: PreviewProvider {
    static var previews: some View {
        Unit4Lesson2(GlobalUserData: userData())
    }
}
