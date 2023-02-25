//
//  GuessingFlagFromCountryGame.swift
//  Map Master
//
//  Created by Rostyslav on 03.02.2023.
//

import SwiftUI

struct GuessingFlagFromCountryGame: View {
    @StateObject var GlobalUserData: userData
    @State private var animateGradient = false
    @State var choice: Int
    @State var before_game: Int = 3
    @State var score: Int = 0
    @State var answer: Int = 0
    @State var correct_answer: Int = 0
    @State var progress: Double = 1
    @State var show_answers: Bool = false
    @State var timeLeft: Double = 60.00
    @State var time_task: Double = 1
    @State private var animateGradient1 = false
    @State var task: [String] = ["","",""]
    var timer = Timer.publish(every: 0.015, on: .main, in: .common).autoconnect()
    @State var isTapped: Bool = false
    @State var ball: Int = Int.random(in: 0..<countryballs.count)
    var body: some View {
        ZStack{
            MainBack()
        VStack{
            
            if before_game > 0{
                Text("Score: \(score)").font(.largeTitle).fontWeight(.heavy).foregroundColor(.white)
                Spacer()
                Text("\(before_game)").font(.system(size: 150)).fontWeight(.heavy) .animation(.linear).foregroundColor(.white)
                Spacer()
            }else{
                if timeLeft > 0{
                    Text("Score: \(score)").font(.largeTitle).fontWeight(.heavy).foregroundColor(.white)
                    Text("Time Left: \(String(format: "%.0f", ceil(timeLeft*100)/100)) s.").font(.largeTitle).fontWeight(.heavy).foregroundColor(.white)
                    
                    VStack{
                        if time_task >= 0.7{
                            ProgressView(value: time_task).padding(.top, 30.0).frame(width: UIScreen.main.bounds.width*0.8).scaleEffect(x: 1, y: 4, anchor: .bottom).accentColor(.green)
                        }else if time_task < 0.7 && time_task >= 0.4{
                            ProgressView(value: time_task).padding(.top, 30.0).frame(width: UIScreen.main.bounds.width*0.8).scaleEffect(x: 1, y: 4, anchor: .bottom).accentColor(.yellow)
                        }else if time_task < 0.4{
                            ProgressView(value: time_task).padding(.top, 30.0).frame(width: UIScreen.main.bounds.width*0.8).scaleEffect(x: 1, y: 4, anchor: .bottom).accentColor(.red)
                        }
                        Text("\(task[correct_answer-1])").font(.largeTitle).fontWeight(.heavy).foregroundColor(.white)
                        Button{
                            if isTapped == false{
                                isTapped = true
                                answer = 1
                                show_answers = true
                                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                    createTask()
                                }
                            }
                        }label: {
                            if show_answers == false{
                                Image("\(task[0])").resizable().frame(width: UIScreen.main.bounds.width*0.4, height: UIScreen.main.bounds.width*0.25).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.vertical)
                            }else{
                                if correct_answer == 1{
                                    Color.green.overlay(
                                        Text("\(task[0])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                    ).frame(width: UIScreen.main.bounds.width*0.4, height: UIScreen.main.bounds.width*0.25).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.vertical)
                                }else{
                                    Color.red.overlay(
                                        Text("\(task[0])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                    ).frame(width: UIScreen.main.bounds.width*0.4, height: UIScreen.main.bounds.width*0.25).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.vertical)
                                }
                            }
                        }
                        Button{
                            if isTapped == false{
                                isTapped = true
                                answer = 2
                                show_answers = true
                                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                    createTask()
                                }
                            }
                        }label: {
                            if show_answers == false{
                                Image("\(task[1])").resizable().frame(width: UIScreen.main.bounds.width*0.4, height: UIScreen.main.bounds.width*0.25).frame(width: UIScreen.main.bounds.width*0.4, height: UIScreen.main.bounds.width*0.25).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.vertical)
                            }else{
                                if correct_answer == 2{
                                    Color.green.overlay(
                                        Text("\(task[1])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                    ).frame(width: UIScreen.main.bounds.width*0.4, height: UIScreen.main.bounds.width*0.25).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.vertical)
                                }else{
                                    Color.red.overlay(
                                        Text("\(task[1])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                    ).frame(width: UIScreen.main.bounds.width*0.4, height: UIScreen.main.bounds.width*0.25).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.vertical)
                                }
                            }
                        }
                        Button{
                            if isTapped == false{
                                isTapped = true
                                answer = 3
                                show_answers = true
                                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                    createTask()
                                }
                            }
                        }label: {
                            if show_answers == false{
                                Image("\(task[2])").resizable().frame(width: UIScreen.main.bounds.width*0.4, height: UIScreen.main.bounds.width*0.25).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.vertical)
                            }else{
                                if correct_answer == 3{
                                    Color.green.overlay(
                                        Text("\(task[2])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                    ).frame(width: UIScreen.main.bounds.width*0.4, height: UIScreen.main.bounds.width*0.25).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.vertical)
                                }else{
                                    Color.red.overlay(
                                        Text("\(task[2])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                    ).frame(width: UIScreen.main.bounds.width*0.4, height: UIScreen.main.bounds.width*0.25).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.vertical)
                                }
                            }
                        }
                        .padding(.bottom)
                    }.padding()
                        .frame(width: UIScreen.main.bounds.width*0.95)
                        .foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
                        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
                    Spacer()
                }else{
                    EndPractice(score: score, ball: ball)
                    Spacer()
                }
            }
        }.onAppear{
            for i in 1...3{
                DispatchQueue.main.asyncAfter(deadline: .now() + Double(i)) {
                    before_game = before_game - 1
                }
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
                    if score > GlobalUserData.result_country_flag[choice-1]{
                        GlobalUserData.result_country_flag[choice-1] = score
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
            if choice == 1{
                let randomNumber = Int.random(in: 0..<allcountries.count)
                randomNumbers.insert(randomNumber)
            }else if choice == 2{
                let randomNumber = Int.random(in: 0..<countriesEurope.count)
                randomNumbers.insert(randomNumber)
            }else if choice == 3{
                let randomNumber = Int.random(in: 0..<countriesAfrica.count)
                randomNumbers.insert(randomNumber)
            }else if choice == 4{
                let randomNumber = Int.random(in: 0..<countriesAsia.count)
                randomNumbers.insert(randomNumber)
            }else if choice == 5{
                let randomNumber = Int.random(in: 0..<countriesAmericas.count)
                randomNumbers.insert(randomNumber)
            }
            
        }
        let sortedArray = Array(randomNumbers).sorted()
        if choice == 1{
            task[0] = String(allcountries[sortedArray[0]][0])
            task[1] = String(allcountries[sortedArray[1]][0])
            task[2] = String(allcountries[sortedArray[2]][0])
        }else if choice == 2{
            task[0] = String(countriesEurope[sortedArray[0]][0])
            task[1] = String(countriesEurope[sortedArray[1]][0])
            task[2] = String(countriesEurope[sortedArray[2]][0])
        }else if choice == 3{
            task[0] = String(countriesAfrica[sortedArray[0]][0])
            task[1] = String(countriesAfrica[sortedArray[1]][0])
            task[2] = String(countriesAfrica[sortedArray[2]][0])
        }
        else if choice == 4{
            task[0] = String(countriesAsia[sortedArray[0]][0])
            task[1] = String(countriesAsia[sortedArray[1]][0])
            task[2] = String(countriesAsia[sortedArray[2]][0])
        }
        else if choice == 5{
            task[0] = String(countriesAmericas[sortedArray[0]][0])
            task[1] = String(countriesAmericas[sortedArray[1]][0])
            task[2] = String(countriesAmericas[sortedArray[2]][0])
        }
        correct_answer = Int.random(in: 1..<4)
        
    }
}

struct GuessingFlagFromCountryGame_Previews: PreviewProvider {
    static var previews: some View {
        GuessingFlagFromCountryGame(GlobalUserData: userData(), choice: Int())
    }
}
