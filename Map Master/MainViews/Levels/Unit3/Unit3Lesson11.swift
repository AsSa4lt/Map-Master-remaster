//
//  Unit3Lesson11.swift
//  Map Master
//
//  Created by Rostyslav on 12.02.2023.
//

import SwiftUI

public let unit3level11: [[String]] = [
    ["Nigeria", "Vietnam"], //1
    [ "Iran", "Egypt"], //2
    ["Ethiopia", "Turkey"], //3
    ["Japan", "Thailand"], //4
    ["United Kingdom", "Uzbekistan"], //5
    ["France", "Malaysia"], //6
    ["Italy", "Yemen"], //7
    ["Tanzania", "North Korea"], //8
    ["South Africa", "Myanmar"], //9
    ["Syria", "Sudan"] //10
    ]
public let unit3level11Pop: [[String]] = [
    ["211 million", "98 million"],
    ["83 million", "98 million"],
    ["115 million", "84 million"],
    ["127 million", "70 million"],
    ["67 million", "34 million"],
    ["67 million", "32 million"],
    ["60 million", "30 million"],
    ["60 million", "25 million"],
    ["59 million", "54 million"],
    [ "18 million", "43 million"]
    ]
public let unit3answers11 = [0, 1, 0, 0, 0, 0, 0, 0, 0, 1]

struct Unit3Lesson11: View {
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
                        Text("Country with bigger population").font(.largeTitle).fontWeight(.heavy)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, -10.0)
                        if correct >= 0.7{
                            ProgressView(value: correct).padding(.top, 30.0).frame(width: UIScreen.main.bounds.width*0.8).scaleEffect(x: 1, y: 4, anchor: .bottom).accentColor(.green).shadow(radius: 3)
                        }else if correct < 0.7 && correct >= 0.4{
                            ProgressView(value: correct).padding(.top, 30.0).frame(width: UIScreen.main.bounds.width*0.8).scaleEffect(x: 1, y: 4, anchor: .bottom).accentColor(.yellow).shadow(radius: 3)
                        }else if correct < 0.4{
                            ProgressView(value: correct).padding(.top, 30.0).frame(width: UIScreen.main.bounds.width*0.8).scaleEffect(x: 1, y: 4, anchor: .bottom).accentColor(.red).shadow(radius: 3)
                        }

                        
                        ForEach(0..<unit3level11[0].count, id: \.self){ i in
                            Button{
                                if isTapped == false{
                                    isTapped = true
                                    show_answers = true
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                                        if unit3answers11[current] == i{
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
                                        GlobalUserData.unit3[10] = true
                                        GlobalUserData.unit3Change = true
                                    }
                                }
                            }label: {
                                if show_answers == false{
                                    VStack{
                                        Text("\(unit3level11[current][i])")
                                            .font(.largeTitle)
                                            .fontWeight(.heavy)
                                            .foregroundColor(Color.white)
                                            .padding(.bottom, -5.0)
                                        Image("\(unit3level11[current][i])").resizable().frame(width: UIScreen.main.bounds.width*0.6, height: UIScreen.main.bounds.width*0.4).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.bottom)
                                    }
                                    .padding(.bottom)
                                }else{
                                    if unit3answers11[current] == i{
                                        VStack{
                                            Text("\(unit3level11[current][i])")
                                                .font(.largeTitle)
                                                .fontWeight(.heavy)
                                                .foregroundColor(Color.white)
                                                .padding(.bottom, -5.0)
                                        Color.green.overlay(
                                            Text("\(unit3level11Pop[current][i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                        ).frame(width: UIScreen.main.bounds.width*0.6, height: UIScreen.main.bounds.width*0.4).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.bottom)
                                        }
                                        .padding(.bottom)
                                    }else{
                                        VStack{
                                            Text("\(unit3level11[current][i])")
                                                .font(.largeTitle)
                                                .fontWeight(.heavy)
                                                .foregroundColor(Color.white)
                                                .padding(.bottom, -5.0)
                                        Color.red.overlay(
                                            Text("\(unit3level11Pop[current][i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                        ).frame(width: UIScreen.main.bounds.width*0.6, height: UIScreen.main.bounds.width*0.4).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.bottom)
                                        }
                                        .padding(.bottom)
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

struct Unit3Lesson11_Previews: PreviewProvider {
    static var previews: some View {
        Unit3Lesson11(GlobalUserData: userData())
    }
}
