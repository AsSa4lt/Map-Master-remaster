//
//  Unit2Lesson2.swift
//  Map Master
//
//  Created by Rostyslav on 12.02.2023.
//
import SwiftUI
public let level2unit2: [[String]] = [
    ["Liberia", "Lesotho", "Italy"], //1
    ["Gabon", "Ecuador", "Brazil"], //2
    ["Azerbaijan", "Afghanistan", "Jamaica"], //3
    ["Montenegro", "Micronesia", "Norway"], //4
    ["Qatar", "Poland", "Spain"], //5
    ["Venezuela", "Togo", "Ukraine"], //6
    ["Romania", "Palau", "Nigeria"], //7
    ["Morocco", "Luxembourg", "Lesotho"], //8
    ["Latvia", "Estonia", "Kyrgyzstan"], //9
    ["Guyana", "Guatemala", "China"] //10
]
public let answers2unit2 =  [0, 2, 1, 2, 1, 2, 0, 1, 0, 2]

struct Unit2Lesson2: View {
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
                        Text("Guess flag").font(.largeTitle).fontWeight(.heavy)
                            .foregroundColor(Color.white)
                            .padding(.bottom, -10.0)
                        if correct >= 0.7{
                            ProgressView(value: correct).padding(.top, 30.0).frame(width: UIScreen.main.bounds.width*0.8).scaleEffect(x: 1, y: 4, anchor: .bottom).accentColor(.green).shadow(radius: 3)
                        }else if correct < 0.7 && correct >= 0.4{
                            ProgressView(value: correct).padding(.top, 30.0).frame(width: UIScreen.main.bounds.width*0.8).scaleEffect(x: 1, y: 4, anchor: .bottom).accentColor(.yellow).shadow(radius: 3)
                        }else if correct < 0.4{
                            ProgressView(value: correct).padding(.top, 30.0).frame(width: UIScreen.main.bounds.width*0.8).scaleEffect(x: 1, y: 4, anchor: .bottom).accentColor(.red).shadow(radius: 3)
                        }
                        
                        Text("\(level2unit2[current][answers2unit2[current]])") .font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding(.top)
                        
                        
                        ForEach(0..<level2unit2[0].count, id: \.self){ i in
                            Button{
                                if isTapped == false{
                                    isTapped = true
                                    answer = i
                                    show_answers = true
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                                        if answers2unit2[current] == i{
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
                                        GlobalUserData.unit2[1] = true
                                        GlobalUserData.unit2Change = true
                                    }
                                }
                            }label: {
                                if show_answers == false{
                                    Image("\(level2unit2[current][i])").resizable().frame(width: UIScreen.main.bounds.width*0.5, height: UIScreen.main.bounds.width*0.35).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.bottom)
                                }else{
                                    if answers2unit2[current] == i{
                                        Color.green.overlay(
                                            Text("\(level2unit2[current][i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                        ).frame(width: UIScreen.main.bounds.width*0.5, height: UIScreen.main.bounds.width*0.35).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.bottom)
                                    }else{
                                        Color.red.overlay(
                                            Text("\(level2unit2[current][i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
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

struct Unit2Lesson2_Previews: PreviewProvider {
    static var previews: some View {
        Unit2Lesson2(GlobalUserData: userData())
    }
}
