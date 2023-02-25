//
//  Unit2Lesson11.swift
//  Map Master
//
//  Created by Rostyslav on 12.02.2023.
//

import SwiftUI

public let unit2level11: [[String]] = [
    ["Moldova", "Malaysia"], //1
    ["Mexico", "Morocco"], //2
    ["Liechtenstein", "Luxembourg"], //3
    ["Kuwait", "Netherlands"], //4
    ["Mozambique", "Libya"], //5
    ["Italy", "Honduras"], //6
    ["Ethiopia", "Chile"], //7
    ["Bangladesh", "Armenia"], //8
    ["Afghanistan", "Algeria"], //9
    ["Hungary", "Nigeria"] //10
]
public let unit2level11Pop: [[String]] = [
    ["4 million", "32 million"],
    ["128 million", "37 million"],
    ["4 thousand", "630 thousand"],
    ["4 million", "17 million"],
    ["31 million", "7 million"],
    ["60 million", "10 million"],
    ["115 million", "20 million"],
    ["165 million", "3 million"],
    ["39 million", "44 million"],
    ["10 million", "204 million"]
]
public let unit2answers11 = [1, 0, 1, 1, 0, 0, 0, 0, 1, 1]

struct Unit2Lesson11: View {
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
                        
                        ForEach(0..<unit2level11[0].count, id: \.self){ i in
                            Button{
                                if isTapped == false{
                                    isTapped = true
                                    show_answers = true
                                    if unit2answers11[current] == i{
                                        correct = correct + 0.1
                                    }
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                                        if unit2answers11[current] != i{
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
                                        GlobalUserData.unit2[10] = true
                                        GlobalUserData.unit2Change = true
                                    }
                                }
                            }label: {
                                if show_answers == false{
                                    VStack{
                                        Text("\(unit2level11[current][i])")
                                            .font(.largeTitle)
                                            .fontWeight(.heavy)
                                            .foregroundColor(Color.white)
                                            .padding(.bottom, -5.0)
                                        Image("\(unit2level11[current][i])").resizable().frame(width: UIScreen.main.bounds.width*0.6, height: UIScreen.main.bounds.width*0.4).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.bottom)
                                    }
                                    .padding(.bottom)
                                }else{
                                    if unit2answers11[current] == i{
                                        VStack{
                                            Text("\(unit2level11[current][i])")
                                                .font(.largeTitle)
                                                .fontWeight(.heavy)
                                                .foregroundColor(Color.white)
                                                .padding(.bottom, -5.0)
                                        Color.green.overlay(
                                            Text("\(unit2level11Pop[current][i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                        ).frame(width: UIScreen.main.bounds.width*0.6, height: UIScreen.main.bounds.width*0.4).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.bottom)
                                        }
                                        .padding(.bottom)
                                    }else{
                                        VStack{
                                            Text("\(unit2level11[current][i])")
                                                .font(.largeTitle)
                                                .fontWeight(.heavy)
                                                .foregroundColor(Color.white)
                                                .padding(.bottom, -5.0)
                                        Color.red.overlay(
                                            Text("\(unit2level11Pop[current][i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
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


struct Unit2Lesson11_Previews: PreviewProvider {
    static var previews: some View {
        Unit2Lesson11(GlobalUserData: userData())
    }
}
