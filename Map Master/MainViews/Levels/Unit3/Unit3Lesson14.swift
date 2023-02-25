//
//  Unit3Lesson14.swift
//  Map Master
//
//  Created by Rostyslav on 12.02.2023.
//

import SwiftUI
public let unit3level14: [[String]] = [
    ["Peru", "Hungary"], //1
    ["Algeria", "Egypt"], //2
    [ "Sweden", "Ireland"], //3
    ["Netherlands", "Bangladesh"], //4
    ["Austria", "Switzerland"], //5
    ["Thailand", "Saudi Arabia"], //6
    ["Taiwan", "Australia"], //7
    ["Morocco", "Kazakhstan"], //8
    ["Vietnam", "Indonesia"], //9
    [ "Italy", "Denmark"] //10
    ]
public let unit3level14Pop: [[String]] = [
    ["$253 billion", "$195 billion"],//1
    ["$190 billion", "$471 billion"],//2
    ["$653 trillion", "$549 billion"],//3
    ["$1019 billion", "$484 billion"],//4
    ["$472 billion", "$834 billion"],//5
    ["$580 billion", "$996 billion"],//6
    ["$858 billion", "$1.8 trillion"],//7
    ["$150 billion", "$244 billion"],//8
    ["$469 billion", "$1.4 trillion"],//9
    [ "$2 trillion", "$394 billion"]//10
    ]
public let unit3answers14 = [0, 1, 0, 0, 1, 1, 1, 1,1, 0]

struct Unit3Lesson14: View {
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
                        Text("Country with bigger GPD").font(.largeTitle).fontWeight(.heavy)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, -10.0)
                        CorrectProgress(correct: correct)

                        ForEach(0..<unit3level14[0].count, id: \.self){ i in
                            Button{
                                if isTapped == false{
                                    isTapped = true
                                    show_answers = true
                                    if unit3answers14[current] == i{
                                        correct = correct + 0.1
                                    }
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                                        if unit3answers14[current] != i{
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
                                        GlobalUserData.unit3[13] = true
                                        GlobalUserData.unit3Change = true
                                    }
                                }
                            }label: {
                                if show_answers == false{
                                    VStack{
                                        Text("\(unit3level14[current][i])")
                                            .font(.largeTitle)
                                            .fontWeight(.heavy)
                                            .foregroundColor(Color.white)
                                            .padding(.bottom, -5.0)
                                        Image("\(unit3level14[current][i])").resizable().frame(width: UIScreen.main.bounds.width*0.6, height: UIScreen.main.bounds.width*0.4).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.bottom)
                                    }
                                    .padding(.bottom)
                                }else{
                                    if unit3answers14[current] == i{
                                        VStack{
                                            Text("\(unit3level14[current][i])")
                                                .font(.largeTitle)
                                                .fontWeight(.heavy)
                                                .foregroundColor(Color.white)
                                                .padding(.bottom, -5.0)
                                        Color.green.overlay(
                                            Text("\(unit3level14Pop[current][i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                        ).frame(width: UIScreen.main.bounds.width*0.6, height: UIScreen.main.bounds.width*0.4).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.bottom)
                                        }
                                        .padding(.bottom)
                                    }else{
                                        VStack{
                                            Text("\(unit3level14[current][i])")
                                                .font(.largeTitle)
                                                .fontWeight(.heavy)
                                                .foregroundColor(Color.white)
                                                .padding(.bottom, -5.0)
                                        Color.red.overlay(
                                            Text("\(unit3level14Pop[current][i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
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

struct Unit3Lesson14_Previews: PreviewProvider {
    static var previews: some View {
        Unit3Lesson14(GlobalUserData: userData())
    }
}
