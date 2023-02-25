//
//  Unit2Lesson10.swift
//  Map Master
//
//  Created by Rostyslav on 12.02.2023.
//

import SwiftUI

public let unit2level10: [[String]] = [
    ["United States", "Brazil"], //1
    ["Argentina", "Australia"], //2
    ["Colombia", "China"], //3
    ["Germany", "Japan"], //4
    ["Madagascar", "Ireland"], //5
    ["Serbia", "South Korea"], //6
    ["Kazakhstan", "Spain"], //7
    ["Gabon", "Andorra"], //8
    ["Greece", "Nepal"], //9
    ["Pakistan", "North Korea"] //10
]
public let unit2level10Pop: [[String]] = [
    ["331 million", "212 million"],
    ["45 million", "25 million"],
    ["51 million", "1430 million"],
    ["84 million", "127 million"],
    ["28 million", "5 million"],
    ["9 million", "51 million"],
    ["19 million", "47 million"],
    ["2 million", "77 thousand"],
    ["10 million", "29 million"],
    ["220 million", "26 million"]
]
public let unit2answers10 = [0, 0, 1, 1, 0, 1, 1,0, 1,0]

struct Unit2Lesson10: View {
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
                        Text("Country with bigger population").font(.largeTitle).fontWeight(.heavy)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, -10.0)
                        CorrectProgress(correct: correct)
                        
                        ForEach(0..<unit2level10[0].count, id: \.self){ i in
                            Button{
                                if isTapped == false{
                                    isTapped = true
                                    show_answers = true
                                    if unit2answers10[current] == i{
                                        correct = correct + 0.1
                                    }
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                                        if unit2answers10[current] != i{
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
                                        GlobalUserData.unit2[9] = true
                                        GlobalUserData.unit2Change = true
                                    }
                                }
                            }label: {
                                if show_answers == false{
                                    VStack{
                                        Text("\(unit2level10[current][i])")
                                            .font(.largeTitle)
                                            .fontWeight(.heavy)
                                            .foregroundColor(Color.white)
                                            .padding(.bottom, -5.0)
                                        Image("\(unit2level10[current][i])").resizable().frame(width: UIScreen.main.bounds.width*0.6, height: UIScreen.main.bounds.width*0.4).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.bottom)
                                    }
                                    .padding(.bottom)
                                }else{
                                    if unit2answers10[current] == i{
                                        VStack{
                                            Text("\(unit2level10[current][i])")
                                                .font(.largeTitle)
                                                .fontWeight(.heavy)
                                                .foregroundColor(Color.white)
                                                .padding(.bottom, -5.0)
                                        Color.green.overlay(
                                            Text("\(unit2level10Pop[current][i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                        ).frame(width: UIScreen.main.bounds.width*0.6, height: UIScreen.main.bounds.width*0.4).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.bottom)
                                        }
                                        .padding(.bottom)
                                    }else{
                                        VStack{
                                            Text("\(unit2level10[current][i])")
                                                .font(.largeTitle)
                                                .fontWeight(.heavy)
                                                .foregroundColor(Color.white)
                                                .padding(.bottom, -5.0)
                                        Color.red.overlay(
                                            Text("\(unit2level10Pop[current][i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
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
                    EndOfLesson(correct:correct, ball: ball, hearts: GlobalUserData.hearts)
                }
            }
        }
    }
}

struct Unit2Lesson10_Previews: PreviewProvider {
    static var previews: some View {
        Unit2Lesson10(GlobalUserData: userData())
    }
}
