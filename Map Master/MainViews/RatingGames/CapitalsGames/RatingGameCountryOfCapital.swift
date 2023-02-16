//
//  RatingGameCountryOfCapital.swift
//  Map Master
//
//  Created by Rostyslav on 09.02.2023.
//

import SwiftUI

struct RatingGameCountryOfCapital: View {
    @StateObject var GlobalUserData: userData
    @State var before_game: Int = 3
    @State var score: Int = 0
    var timer = Timer.publish(every: 0.015, on: .main, in: .common).autoconnect()
    @State var answer: Int = 0
    @State var isTapped: Bool = false
    @State var correct_answer: Int = 0
    @State var progress: Double = 1
    @State var capitals: [String] = ["", "", ""]
    @State var show_answers: Bool = false
    @State var timeLeft: Double = 90.00
    @State var time_task: Double = 1
    @State private var animateGradient1 = false
    @State var task: [String] = ["","",""]
    var body: some View {
        ZStack{
            HomeBackGround()
            VStack{
                if before_game > 0{
                    Spacer()
                    Spacer()
                    Text("\(before_game)").font(.system(size: 150)).fontWeight(.heavy) .animation(.linear).foregroundColor(.white)
                    Spacer()
                }else{
                    if timeLeft > 0{
                    Text("Score: \(score)").font(.largeTitle).fontWeight(.heavy).foregroundColor(.white)
                    Text("Time Left: \(String(format: "%.0f", ceil(timeLeft*100)/100)) s.").font(.largeTitle).fontWeight(.heavy).foregroundColor(.white)
                        VStack{
                            if time_task >= 0.7{
                                ProgressView(value: time_task).padding(.top, 30.0).frame(width: UIScreen.main.bounds.width*0.8).scaleEffect(x: 1, y: 4, anchor: .bottom).accentColor(.green).shadow(radius: 3)
                            }else if time_task < 0.7 && time_task >= 0.4{
                                ProgressView(value: time_task).padding(.top, 30.0).frame(width: UIScreen.main.bounds.width*0.8).scaleEffect(x: 1, y: 4, anchor: .bottom).accentColor(.yellow).shadow(radius: 3)
                            }else if time_task < 0.4{
                                ProgressView(value: time_task).padding(.top, 30.0).frame(width: UIScreen.main.bounds.width*0.8).scaleEffect(x: 1, y: 4, anchor: .bottom).accentColor(.red).shadow(radius: 3)
                            }
                            
                            Text("\(capitals[correct_answer-1])") .font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white)
                               
                            ForEach(0..<3, id: \.self){ i in
                                Button{
                                    if isTapped == false{
                                        isTapped = true
                                        answer = i+1
                                        show_answers = true
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                                            createTask()
                                        }
                                    }
                                }label: {
                                    HStack{
                                        if show_answers == false{
                                            Image("\(task[i])").resizable().frame(width: UIScreen.main.bounds.width*0.4, height: UIScreen.main.bounds.width*0.25).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.vertical)
                                        }else{
                                            if correct_answer == i+1{
                                                Color.green.overlay(
                                                    Text("\(capitals[i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                                ).frame(width: UIScreen.main.bounds.width*0.4, height: UIScreen.main.bounds.width*0.25).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.vertical)
                                            }else{
                                                Color.red.overlay(
                                                    Text("\(capitals[i])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                                ).frame(width: UIScreen.main.bounds.width*0.4, height: UIScreen.main.bounds.width*0.25).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.vertical)
                                            }
                                        }
                                        Text("\(task[i])").font(.title).fontWeight(.heavy).foregroundColor(Color.white)
                                        Spacer()
                                    }
                                }
                            }
                        }.padding()
                            .frame(width: UIScreen.main.bounds.width*0.95)
                            .foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
                            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
                           
                    }else{
                        Spacer()
                        Text("Score").fontWeight(.heavy).font(.system(size: 70)).foregroundColor(.white)
                        Text("\(score)").fontWeight(.heavy).font(.system(size: 80)).foregroundColor(.white)
                    }
                }
                Spacer()
            }.onAppear{
                for i in 1...3{
                    DispatchQueue.main.asyncAfter(deadline: .now() + Double(i)) {
                        before_game = before_game - 1
                    }
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
                    GlobalUserData.games_left -= 1
                }
                createTask()
                score = 0
            }.onReceive(timer){ _ in
                if before_game <= 0{
                    if timeLeft > 0{
                        timeLeft = timeLeft - 0.015
                        if time_task > 0{
                            time_task = time_task - 0.0015
                        }else{
                            createTask()
                        }
                    }else{
                        if score > GlobalUserData.rating_capital_country{
                            GlobalUserData.rating_capital_country = score
                        }
                    }
                }
            }
        }
    }
    func createTask(){
        isTapped = false
        if answer == correct_answer{
            score = score + Int(1000 * time_task)
        }else{
            score = score - 300
            if score < 0{
                score = 0
            }
        }
        time_task = 1
        answer = -1
        show_answers = false
        var randomNumbers = Set<Int>()
        while randomNumbers.count < 3 {
            let randomNumber = Int.random(in: 0..<allcountries.count)
            randomNumbers.insert(randomNumber)
        }
        let sortedArray = Array(randomNumbers).sorted()
        task[0] = String(allcountries[sortedArray[0]][0])
        task[1] = String(allcountries[sortedArray[1]][0])
        task[2] = String(allcountries[sortedArray[2]][0])
        correct_answer = Int.random(in: 1..<4)
        capitals[0] = String(allcountries[sortedArray[0]][1])
        capitals[1] = String(allcountries[sortedArray[1]][1])
        capitals[2] = String(allcountries[sortedArray[2]][1])
        
    }
}

struct RatingGameCountryOfCapital_Previews: PreviewProvider {
    static var previews: some View {
        RatingGameCountryOfCapital(GlobalUserData: userData())
    }
}
