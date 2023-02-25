//
//  Unit2Lesson12.swift
//  Map Master
//
//  Created by Rostyslav on 12.02.2023.
//

import SwiftUI

public let unit2level12: [[String]] = [
    ["North Macedonia", "Kyrgyzstan"], //1
    ["Jordan", "Georgia"], //2
    ["Ecuador", "Cameroon"], //3
    ["Bulgaria", "Botswana"], //4
    ["Belarus", "Cuba"], //5
    ["Croatia", "Burundi"], //6
    ["Burkina Faso", "Slovakia"], //7
    ["Venezuela", "Zambia"], //8
    ["Uzbekistan", "Czechia"], //9
    ["Oman", "Myanmar"] //10
]
public let unit2level12Pop: [[String]] = [
    ["2 million", "6 million"],
    ["10 million", "4 million"],
    ["17 million", "26 million"],
    ["7 million", "2.4 million"],
    ["9.7 million", "11.3 million"],
    ["4 million", "12 million"],
    ["21 million", "5.5 million"],
    ["28 million", "18 million"],
    ["33 million", "11 million"],
    ["5 million", "54 million"]
]
public let unit2answers12 = [1, 0, 1, 0, 1, 1, 0, 0, 0, 1]

struct Unit2Lesson12: View {
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

                        
                        ForEach(0..<unit2level12[0].count, id: \.self){ i in
                            Button{
                                if isTapped == false{
                                    isTapped = true
                                    show_answers = true
                                    if unit2answers12[current] == i{
                                        correct = correct + 0.1
                                    }
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                                        if unit2answers12[current] != i{
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
                                        GlobalUserData.unit2[11] = true
                                        GlobalUserData.unit2Change = true
                                    }
                                }
                            }label: {
                                if show_answers == false{
                                    VStack{
                                        Text("\(unit2level12[current][i])")
                                            .font(.largeTitle)
                                            .fontWeight(.heavy)
                                            .foregroundColor(Color.white)
                                            .padding(.bottom, -5.0)
                                        Image("\(unit2level12[current][i])").resizable().frame(width: UIScreen.main.bounds.width*0.6, height: UIScreen.main.bounds.width*0.4).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.bottom)
                                    }
                                    .padding(.bottom)
                                }else{
                                    if unit2answers12[current] == i{
                                        VStack{
                                            Text("\(unit2level12[current][i])")
                                                .font(.largeTitle)
                                                .fontWeight(.heavy)
                                                .foregroundColor(Color.white)
                                                .padding(.bottom, -5.0)
                                        Color.green.overlay(
                                            Text("\(unit2level12Pop[current][i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                        ).frame(width: UIScreen.main.bounds.width*0.6, height: UIScreen.main.bounds.width*0.4).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.bottom)
                                        }
                                        .padding(.bottom)
                                    }else{
                                        VStack{
                                            Text("\(unit2level12[current][i])")
                                                .font(.largeTitle)
                                                .fontWeight(.heavy)
                                                .foregroundColor(Color.white)
                                                .padding(.bottom, -5.0)
                                        Color.red.overlay(
                                            Text("\(unit2level12Pop[current][i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
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

struct Unit2Lesson12_Previews: PreviewProvider {
    static var previews: some View {
        Unit2Lesson12(GlobalUserData: userData())
    }
}
