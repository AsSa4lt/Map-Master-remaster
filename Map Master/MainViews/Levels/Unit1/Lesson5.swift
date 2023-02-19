//
//  Lesson5.swift
//  Map Master
//
//  Created by Rostyslav on 11.02.2023.
//

import SwiftUI
public let level5: [[String]] = [
    ["Austria", "Vienna", "Minsk"], //1
    ["Bulgaria", "Sofia", "Ottawa"], //2
    ["Georgia", "Tbilisi", "Athens"], //3
    ["Iraq", "Doha", "Baghdad"], //4
    ["United Kingdom", "Tokyo", "London"], //5
    ["Egypt", "Zagreb", "Cairo"], //6
    ["Finland", "Helsinki" ,"Prague"], //7
    ["Afghanistan", "Luanda", "Kabul"], //8
    ["Armenia", "Yerevan", "Berlin"], //9
    ["Belgium", "Brussels", "Bridgetown"] //10
]
public let answers5 = [0, 0, 0, 1, 1, 1, 0, 1, 0, 0]

struct Lesson5: View {
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
                        Text("Guess capital").font(.largeTitle).fontWeight(.heavy)
                            .foregroundColor(Color.white)
                            .padding(.bottom, -10.0)
                        if correct >= 0.7{
                            ProgressView(value: correct).padding(.top, 30.0).frame(width: UIScreen.main.bounds.width*0.8).scaleEffect(x: 1, y: 4, anchor: .bottom).accentColor(.green).shadow(radius: 3)
                        }else if correct < 0.7 && correct >= 0.4{
                            ProgressView(value: correct).padding(.top, 30.0).frame(width: UIScreen.main.bounds.width*0.8).scaleEffect(x: 1, y: 4, anchor: .bottom).accentColor(.yellow).shadow(radius: 3)
                        }else if correct < 0.4{
                            ProgressView(value: correct).padding(.top, 30.0).frame(width: UIScreen.main.bounds.width*0.8).scaleEffect(x: 1, y: 4, anchor: .bottom).accentColor(.red).shadow(radius: 3)
                        }
                        
                        Text("\(level5[current][0])") .font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding(.top)
                        Image("\(level5[current][0])").resizable().frame(width: UIScreen.main.bounds.width*0.6, height: UIScreen.main.bounds.width*0.4).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.bottom)
                        
                        ForEach(1..<level5[0].count, id: \.self){ i in
                            Button{
                                if isTapped == false{
                                    isTapped = true
                                    show_answers = true
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                                        if answers5[current] == i-1{
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
                                        GlobalUserData.unit1[4] = true
                                        GlobalUserData.unit1Change = true
                                    }
                                }
                            }label: {
                                if show_answers == false{
                                    Color.cyan.overlay(
                                        Text("\(level5[current][i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                    ).frame(width:  UIScreen.main.bounds.width*0.6, height: UIScreen.main.bounds.height/15).cornerRadius(15).padding(.vertical, 10.0).shadow(radius: 5)
                                }else{
                                    if answers5[current] == i-1{
                                        Color.green.overlay(
                                            Text("\(level5[current][i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                        ).frame(width:  UIScreen.main.bounds.width*0.6, height: UIScreen.main.bounds.height/15).cornerRadius(15).padding(.vertical, 10.0).shadow(radius: 5)
                                    }else{
                                        Color.red.overlay(
                                            Text("\(level5[current][i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
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

struct Lesson5_Previews: PreviewProvider {
    static var previews: some View {
        Lesson5(GlobalUserData: userData())
    }
}
