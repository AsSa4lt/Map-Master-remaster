//
//  Unit2Lesson3.swift
//  Map Master
//
//  Created by Rostyslav on 12.02.2023.
//

import SwiftUI
public let level3unit2: [[String]] = [
    ["Cyprus", "China", "Iceland"], //1
    ["Norway", "Finland", "Denmark"], //2
    ["Kyrgyzstan", "Kazakhstan", "Tajikistan"], //3
    ["Pakistan", "Paraguay", "France"], //4
    ["Croatia", "Bolivia", "Angola"], //5
    ["Bangladesh", "Costa Rica", "Guinea"], //6
    ["Liechtenstein", "Morocco", "Nigeria"], //7
    ["Sudan", "Thailand", "Zambia"], //8
    ["Dominica", "Albania", "Bahrain"], //9
    ["Bulgaria", "Botswana", "Ecuador"] //10
]
public let answer32unit2 =  [1, 0, 2, 1, 0, 2, 1, 0, 2, 1]

struct Unit2Lesson3: View {
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
                        Text("Guess flag").font(.largeTitle).fontWeight(.heavy)
                            .foregroundColor(Color.white)
                            .padding(.bottom, -10.0)
                        CorrectProgress(correct: correct)

                        Text("\(level3unit2[current][answer32unit2[current]])") .font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding(.top)
                        
                        
                        ForEach(0..<level3unit2[0].count, id: \.self){ i in
                            Button{
                                if isTapped == false{
                                    isTapped = true
                                    answer = i
                                    show_answers = true
                                    if answer32unit2[current] == i{
                                        correct = correct + 0.1
                                    }
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                                        if answer32unit2[current] != i{
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
                                        GlobalUserData.unit2[2] = true
                                        GlobalUserData.unit2Change = true
                                    }
                                }
                            }label: {
                                if show_answers == false{
                                    Image("\(level3unit2[current][i])").resizable().frame(width: UIScreen.main.bounds.width*0.5, height: UIScreen.main.bounds.width*0.35).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.bottom)
                                }else{
                                    if answer32unit2[current] == i{
                                        Color.green.overlay(
                                            Text("\(level3unit2[current][i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                        ).frame(width: UIScreen.main.bounds.width*0.5, height: UIScreen.main.bounds.width*0.35).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.bottom)
                                    }else{
                                        Color.red.overlay(
                                            Text("\(level3unit2[current][i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                        ).frame(width: UIScreen.main.bounds.width*0.5, height: UIScreen.main.bounds.width*0.35).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.bottom)
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

struct Unit2Lesson3_Previews: PreviewProvider {
    static var previews: some View {
        Unit2Lesson3(GlobalUserData: userData())
    }
}
