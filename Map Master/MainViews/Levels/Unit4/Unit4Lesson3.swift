//
//  Unit4Lesso3.swift
//  Map Master
//
//  Created by Rostyslav on 13.02.2023.
//

import SwiftUI
public let level3unit4: [[String]] = [
    ["Honduras", "Senegal", "Sweden"],
    ["South Korea", "Mozambique", "Slovakia"],
    ["Greece", "Tunisia", "Taiwan"],
    ["Rwanda", "Nicaragua", "Lithuania"],
    ["Uzbekistan", "El Salvador", "Argentina"],
    ["Moldova", "Qatar", "Liberia"],
    ["Lesotho", "Sri Lanka", "Denmark"],
    ["Central African Republic", "Vatican City", "Chad"],
    ["Swaziland", "Guinea", "Syria"],
    ["Kyrgyzstan", "Ethiopia", "Australia"]
    ]
public let answers3unit4 = [1, 0, 2, 2, 0, 1, 2, 0, 1, 0]

struct Unit4Lesson3: View {
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
                        Text("Guess country").font(.largeTitle).fontWeight(.heavy)
                            .foregroundColor(Color.white)
                            .padding(.bottom, -10.0)
                        if correct >= 0.7{
                            ProgressView(value: correct).padding(.top, 30.0).frame(width: UIScreen.main.bounds.width*0.8).scaleEffect(x: 1, y: 4, anchor: .bottom).accentColor(.green).shadow(radius: 3)
                        }else if correct < 0.7 && correct >= 0.4{
                            ProgressView(value: correct).padding(.top, 30.0).frame(width: UIScreen.main.bounds.width*0.8).scaleEffect(x: 1, y: 4, anchor: .bottom).accentColor(.yellow).shadow(radius: 3)
                        }else if correct < 0.4{
                            ProgressView(value: correct).padding(.top, 30.0).frame(width: UIScreen.main.bounds.width*0.8).scaleEffect(x: 1, y: 4, anchor: .bottom).accentColor(.red).shadow(radius: 3)
                        }
                        
                        Image("\(level3unit4[current][answers3unit4[current]])").resizable().frame(width: UIScreen.main.bounds.width*0.6, height: UIScreen.main.bounds.width*0.4).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.bottom, 50.0).padding(.top)
                        
                        
                        ForEach(0..<level3unit4[0].count, id: \.self){ i in
                            Button{
                                if isTapped == false{
                                    isTapped = true
                                    answer = i
                                    show_answers = true
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                                        if answers3unit4[current] == i{
                                            correct = correct + 0.1
                                        }else{
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
                                        GlobalUserData.unit4[2] = true
                                        GlobalUserData.unit4Change = true
                                    }
                                }
                            }label: {
                                if show_answers == false{
                                    Color.indigo.overlay(
                                        Text("\(level3unit4[current][i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                    ).frame(width: UIScreen.main.bounds.width*0.6, height: UIScreen.main.bounds.width*0.15).cornerRadius(20).overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.bottom)
                                }else{
                                    if answers3unit4[current] == i{
                                        Color.green.overlay(
                                            Text("\(level3unit4[current][i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                        ).frame(width: UIScreen.main.bounds.width*0.6, height: UIScreen.main.bounds.width*0.15).cornerRadius(20).overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.bottom)
                                    }else{
                                        Color.red.overlay(
                                            Text("\(level3unit4[current][i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
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
                    if GlobalUserData.hearts <= 0{
                        Text("You ran you of hearts!").font(.title).fontWeight(.heavy)
                            .foregroundColor(Color.white)
                            .padding(.bottom, -10.0)
                        Image(systemName: "heart.fill").resizable().padding(.top).frame(width: 100, height: 100).foregroundColor(.red)
                    }
                    if correct >= 0.7{
                        Text("You passed lesson").font(.title).fontWeight(.heavy).foregroundColor(.white)
                        Image(systemName: "checkmark.seal.fill").resizable().frame(width: 200, height: 200).foregroundColor(.white)
                    }else{
                        Text("You didn't pass lesson").font(.title).fontWeight(.heavy).foregroundColor(.white)
                        Image(systemName: "xmark.seal.fill").resizable().frame(width: 200, height: 200).foregroundColor(.white)
                    }
                    Spacer()
                }
            }
        }
    }
}

struct Unit4Lesson3_Previews: PreviewProvider {
    static var previews: some View {
        Unit4Lesson3(GlobalUserData: userData())
    }
}
