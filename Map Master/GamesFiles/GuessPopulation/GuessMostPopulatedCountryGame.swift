//
//  GuessMostPopulatedCountryGame.swift
//  Map Master
//
//  Created by Rostyslav on 03.02.2023.
//

import SwiftUI

struct GuessMostPopulatedCountryGame: View {
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
    @State var arr: [Int] = []
    @State var population: [String] = ["", "", ""]
    @State var task: [String] = ["","",""]
    var timer = Timer.publish(every: 0.015, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack{
            
            if before_game > 0{
                Text("Score: \(score)").font(.largeTitle).fontWeight(.heavy).foregroundColor(.white)
                Spacer()
                Text("\(before_game)").font(.system(size: 150)).fontWeight(.heavy) .animation(.linear).foregroundColor(.white)
                Spacer()
            }else{
                if timeLeft > 0{
                    Text("Score: \(score)").font(.largeTitle).fontWeight(.heavy).foregroundColor(.white)
                    Text("Time Left").font(.largeTitle).fontWeight(.heavy).foregroundColor(.white)
                    Text("\(String(format: "%.2f", ceil(timeLeft*100)/100))").fontWeight(.heavy).foregroundColor(.white).font(.system(size: 40)).padding(.bottom, -10.0)
                    
                    VStack{
                        if time_task >= 0.7{
                            ProgressView(value: time_task).padding(.top, 30.0).frame(width: UIScreen.main.bounds.width*0.8).scaleEffect(x: 1, y: 4, anchor: .bottom).accentColor(.green)
                        }else if time_task < 0.7 && time_task >= 0.4{
                            ProgressView(value: time_task).padding(.top, 30.0).frame(width: UIScreen.main.bounds.width*0.8).scaleEffect(x: 1, y: 4, anchor: .bottom).accentColor(.yellow)
                        }else if time_task < 0.4{
                            ProgressView(value: time_task).padding(.top, 30.0).frame(width: UIScreen.main.bounds.width*0.8).scaleEffect(x: 1, y: 4, anchor: .bottom).accentColor(.red)
                        }
                        Text("Select country with").font(.largeTitle).fontWeight(.heavy).foregroundColor(.white)
                        Text("biggest population").font(.largeTitle).fontWeight(.heavy).foregroundColor(.white)
                        Button{
                            answer = 1
                            show_answers = true
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                createTask()
                            }
                        }label: {
                            VStack{
                                if show_answers == false{
                                    Image("\(task[0])").resizable().frame(width: UIScreen.main.bounds.width*0.3, height: UIScreen.main.bounds.width*0.18).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.top)
                                }else{
                                    if correct_answer == 1{
                                        Color.green.overlay(
                                            Text("\(population[0])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                        ).frame(width: UIScreen.main.bounds.width*0.3, height: UIScreen.main.bounds.width*0.18).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.top)
                                    }else{
                                        Color.red.overlay(
                                            Text("\(population[0])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                        ).frame(width: UIScreen.main.bounds.width*0.3, height: UIScreen.main.bounds.width*0.18).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.top)
                                    }
                                }
                                Text("\(task[0])").font(.title3).fontWeight(.heavy).foregroundColor(.white).padding(.bottom)
                                
                            }.frame(width: UIScreen.main.bounds.width*0.8)
                        }
                        Button{
                            answer = 2
                            show_answers = true
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                createTask()
                            }
                        }label: {
                            VStack{
                                if show_answers == false{
                                    Image("\(task[1])").resizable().frame(width: UIScreen.main.bounds.width*0.3, height: UIScreen.main.bounds.width*0.18).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.top)
                                }else{
                                    if correct_answer == 2{
                                        Color.green.overlay(
                                            Text("\(population[1])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                        ).frame(width: UIScreen.main.bounds.width*0.3, height: UIScreen.main.bounds.width*0.18).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.top)
                                    }else{
                                        Color.red.overlay(
                                            Text("\(population[1])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                        ).frame(width: UIScreen.main.bounds.width*0.3, height: UIScreen.main.bounds.width*0.18).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.top)
                                    }
                                }
                                Text("\(task[1])").font(.title3).fontWeight(.heavy).foregroundColor(.white).padding(.bottom)
                            }
                        }
                        Button{
                            answer = 3
                            show_answers = true
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                createTask()
                            }
                        }label: {
                            VStack{
                                if show_answers == false{
                                    Image("\(task[2])").resizable().frame(width: UIScreen.main.bounds.width*0.3, height: UIScreen.main.bounds.width*0.18).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.top)
                                }else{
                                    if correct_answer == 3{
                                        Color.green.overlay(
                                            Text("\(population[2])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                        ).frame(width: UIScreen.main.bounds.width*0.3, height: UIScreen.main.bounds.width*0.18).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.top)
                                    }else{
                                        Color.red.overlay(
                                            Text("\(population[2])").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                                        ).frame(width: UIScreen.main.bounds.width*0.3, height: UIScreen.main.bounds.width*0.18).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.top)
                                    }
                                }
                                Text("\(task[2])").font(.title3).fontWeight(.heavy).foregroundColor(.white)
                            }
                        }
                        .padding(.bottom)
                    }.frame(width: UIScreen.main.bounds.width/1.05).background(
                        LinearGradient(gradient: Gradient(colors: [Color(hex: 0x3b34), Color(hex: 0x56388A)]), startPoint: animateGradient1 ? .topLeading : .bottomLeading, endPoint: animateGradient1 ? .bottomTrailing : .topTrailing)).cornerRadius(15).padding(.bottom, 30.0)
                    Spacer()
                }else{
                    Text("Score").fontWeight(.heavy).font(.system(size: 70)).foregroundColor(.white)
                    Text("\(score)").fontWeight(.heavy).font(.system(size: 70)).foregroundColor(.white)
                }
            }
        }.background(
            LinearGradient(gradient: Gradient(colors: [Color(hex: 0x26527C), Color(hex: 0x20805E)]), startPoint: animateGradient ? .topLeading : .bottomLeading, endPoint: animateGradient ? .bottomTrailing : .topTrailing).ignoresSafeArea().frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height).onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.01) {
                    withAnimation(.linear(duration: 5).repeatForever(autoreverses: true)) {
                        animateGradient.toggle()
                    }
                }
            }
        ).onAppear{
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
                    if score > GlobalUserData.result_population_country[choice-1]{
                        GlobalUserData.result_population_country[choice-1] = score
                    }
                }
            }
        }
    }
    func createTask(){
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
        arr = []
        let sortedArray = Array(randomNumbers).sorted()
        if choice == 1{
            task[0] = String(allcountries[sortedArray[0]][0])
            task[1] = String(allcountries[sortedArray[1]][0])
            task[2] = String(allcountries[sortedArray[2]][0])
            arr.append(Int(allcountries[sortedArray[0]][2])!)
            arr.append(Int(allcountries[sortedArray[1]][2])!)
            arr.append(Int(allcountries[sortedArray[2]][2])!)
        }else if choice == 2{
            task[0] = String(countriesEurope[sortedArray[0]][0])
            task[1] = String(countriesEurope[sortedArray[1]][0])
            task[2] = String(countriesEurope[sortedArray[2]][0])
            arr.append(Int(countriesEurope[sortedArray[0]][2])!)
            arr.append(Int(countriesEurope[sortedArray[1]][2])!)
            arr.append(Int(countriesEurope[sortedArray[2]][2])!)
        }else if choice == 3{
            task[0] = String(countriesAfrica[sortedArray[0]][0])
            task[1] = String(countriesAfrica[sortedArray[1]][0])
            task[2] = String(countriesAfrica[sortedArray[2]][0])
            arr.append(Int(countriesAfrica[sortedArray[0]][2])!)
            arr.append(Int(countriesAfrica[sortedArray[1]][2])!)
            arr.append(Int(countriesAfrica[sortedArray[2]][2])!)
        }
        else if choice == 4{
            task[0] = String(countriesAsia[sortedArray[0]][0])
            task[1] = String(countriesAsia[sortedArray[1]][0])
            task[2] = String(countriesAsia[sortedArray[2]][0])
            arr.append(Int(countriesAsia[sortedArray[0]][2])!)
            arr.append(Int(countriesAsia[sortedArray[1]][2])!)
            arr.append(Int(countriesAsia[sortedArray[2]][2])!)
        }
        else if choice == 5{
            task[0] = String(countriesAmericas[sortedArray[0]][0])
            task[1] = String(countriesAmericas[sortedArray[1]][0])
            task[2] = String(countriesAmericas[sortedArray[2]][0])
            arr.append(Int(countriesAmericas[sortedArray[0]][2])!)
            arr.append(Int(countriesAmericas[sortedArray[1]][2])!)
            arr.append(Int(countriesAmericas[sortedArray[2]][2])!)
        }
        if arr[0] >= arr[1] && arr[0] >= arr[2]{
            correct_answer = 1
        }else if arr[1] >= arr[2] && arr[1] >= arr[0] {
            correct_answer = 2
        }else{
            correct_answer = 3
        }
        
        for i in 0..<3{
            if arr[i] > 1000000{
                var buf: Int = arr[i]%1000000
                buf = buf / 100000
                population[i] = String(arr[i]/1000000) + "," + String(buf) + " mil."
            }else{
                population[i] = String(arr[i])
            }
        }
        
    }
}

struct GuessMostPopulatedCountryGame_Previews: PreviewProvider {
    static var previews: some View {
        GuessMostPopulatedCountryGame(GlobalUserData: userData(), choice: Int())
    }
}
