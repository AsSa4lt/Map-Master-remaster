//
//  UnitedStatesGame.swift
//  Map Master
//
//  Created by Rostyslav on 15.02.2023.
//

import SwiftUI
import InteractiveMap

struct UnitedStatesGame: View {
    @StateObject var GlobalUserData: userData
    @State var before_game: Int = 3
    @State var score: Int = 0
    @State var choice: Int
    var timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    @State var answer: String = ""
    @State var task: String = ""
    @State var timeLeft: Double = 300.00
    @State private var clickedPath = PathData()
    @State private var scale: Int = 0
    @State var dragAmount = CGSize.zero
    @State var stateOfAnswer: Int = 0
    @State var possible_countries = us_states
    @State var pathsWrong: [PathData] = []
    @State var pathsCorrect: [PathData] = []
    @State var isTapped: Bool = false
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
                            if stateOfAnswer == 0{
                                Text("Click on \(task)").fontWeight(.heavy).font(.title).foregroundColor(.white)
                            }else if stateOfAnswer == 1{
                                Text("Click on \(task)").fontWeight(.heavy).font(.title).foregroundColor(.green)
                            }else{
                                Text("Click on \(task)").fontWeight(.heavy).font(.title).foregroundColor(.red)
                            }
                            ZStack{
                                Rectangle().frame(width: UIScreen.main.bounds.width*0.92, height: UIScreen.main.bounds.width*0.6).foregroundColor(Color(hue: 0.552, saturation: 0.577, brightness: 0.968)).cornerRadius(15)
                                Rectangle().foregroundColor(.secondary).opacity(0.05).frame(width: UIScreen.main.bounds.width*20, height: UIScreen.main.bounds.width*20).gesture(
                                    DragGesture()
                                        .onChanged { value in
                                            self.dragAmount.height = self.dragAmount.height + value.translation.height
                                            self.dragAmount.width = self.dragAmount.width + value.translation.width
                                        }
                                        .onEnded { value in
                                            //self.dragAmount = self.dragAmount + value.translation
                                            offsetControl()
                                        }
                                ).offset(x: dragAmount.width, y: dragAmount.height)
                                
                                InteractiveMap(svgName: "usa-low") { pathData in // is a PathData
                                    if pathsWrong.contains(pathData){
                                        InteractiveShape(pathData)
                                            .stroke(.black, lineWidth: 0.2)
                                            .background(InteractiveShape(pathData).fill(Color.red)) // filling the shapes
                                            .onTapGesture {
                                                clickedPath = pathData
                                            }
                                    }else if pathsCorrect.contains(pathData){
                                        InteractiveShape(pathData)
                                            .stroke(.black, lineWidth: 0.2)
                                            .background(InteractiveShape(pathData).fill(Color.green)) // filling the shapes
                                            .onTapGesture {
                                                clickedPath = pathData
                                            }
                                    } else if clickedPath != pathData{
                                        InteractiveShape(pathData)
                                            .stroke(.black, lineWidth: 0.2)
                                            .background(InteractiveShape(pathData).fill(Color(white: 0.9))) // filling the shapes
                                            .onTapGesture {
                                                clickedPath = pathData
                                            }
                                    }else{
                                        InteractiveShape(pathData)
                                            .stroke(.black, lineWidth: 0.2)
                                            .background(InteractiveShape(pathData).fill(Color.orange)) // filling the shapes
                                            .onTapGesture {
                                                clickedPath = pathData
                                            }
                                    }
                                }.scaleEffect(CGFloat(1+scale*2)).gesture(
                                    DragGesture()
                                        .onChanged { value in
                                            self.dragAmount.height = self.dragAmount.height + value.translation.height
                                            self.dragAmount.width = self.dragAmount.width + value.translation.width
                                        }
                                        .onEnded { value in
                                            //self.dragAmount = self.dragAmount + value.translation
                                            offsetControl()
                                        }
                                ).offset(x: dragAmount.width, y: dragAmount.height).clipShape(Rectangle()).frame(width: UIScreen.main.bounds.width*0.92, height: UIScreen.main.bounds.width*0.6).cornerRadius(15)
                                
                                
                                
                                Stepper(value: $scale, in: 0...5) {
                                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label@*/Text("Stepper")/*@END_MENU_TOKEN@*/
                                }.background(Color.green).cornerRadius(10).labelsHidden().foregroundColor(.white).offset(x: UIScreen.main.bounds.width*0.325,y: UIScreen.main.bounds.width*0.25)
                            }.frame(width: UIScreen.main.bounds.width*0.92, height: UIScreen.main.bounds.width*0.6).onChange(of: scale){ _ in
                                offsetControl()
                            }
                            
                            
                            Button {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                                if isTapped == false{
                                    isTapped = true
                                    if clickedPath.name == answer{
                                        score = score + 300
                                        stateOfAnswer = 1
                                        pathsCorrect.append(PathData(name: "\(answer)", id: "\(answer)", path: []))
                                    }else{
                                        stateOfAnswer = 2
                                        pathsWrong.append(PathData(name: "\(answer)", id: "\(answer)", path: []))
                                    }
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                        CreateTask()
                                    }
                                }
                            }label: {
                                Color.indigo.overlay(
                                    Text("Submit").font(.title).fontWeight(.heavy).foregroundColor(.white)
                                ).frame(width: UIScreen.main.bounds.width*0.3, height: UIScreen.main.bounds.width*0.15).cornerRadius(20).overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.vertical)
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
                if choice == 1{
                    timeLeft = 60
                }else if choice == 2{
                    timeLeft = 120
                }else{
                    timeLeft = 300
                }
                for i in 1...3{
                    DispatchQueue.main.asyncAfter(deadline: .now() + Double(i)) {
                        before_game = before_game - 1
                    }
                }
                CreateTask()
                score = 0
            }.onReceive(timer){ _ in
                if before_game <= 0{
                    if timeLeft > 0{
                        timeLeft = timeLeft - 0.1
                        if possible_countries.count == 0{
                            timeLeft = 0
                        }
                    }else{
                        if score > GlobalUserData.result_find_us[choice-1]{
                            GlobalUserData.result_find_us[choice-1] = score
                        }
                    }
                }
            }
        }.onAppear{
            UIStepper.appearance().setDecrementImage(UIImage(systemName: "minus"), for: .normal)
            UIStepper.appearance().setIncrementImage(UIImage(systemName: "plus"), for: .normal)
        }
    }
    func offsetControl(){
        if self.dragAmount.height > UIScreen.main.bounds.height * 0.2 * CGFloat(scale*2){
            self.dragAmount.height = UIScreen.main.bounds.height * 0.2*CGFloat(scale*2)
        }
        
        if self.dragAmount.height < -UIScreen.main.bounds.height * 0.2 * CGFloat(scale*2){
            self.dragAmount.height = -UIScreen.main.bounds.height * 0.2*CGFloat(scale*2)
        }
        
        if self.dragAmount.width > UIScreen.main.bounds.width * 0.2 * CGFloat(scale*5){
            self.dragAmount.width = UIScreen.main.bounds.width * 0.2*CGFloat(scale*5)
        }
        
        if self.dragAmount.width < -UIScreen.main.bounds.width * 0.2 * CGFloat(scale*5){
            self.dragAmount.width = -UIScreen.main.bounds.width * 0.2*CGFloat(scale*5)
        }
    }
    
    func CreateTask(){
        isTapped = false
        stateOfAnswer = 0
        if possible_countries.count > 0{
            let a = Int.random(in: 0..<possible_countries.count)
            task = possible_countries[a][1]
            answer = possible_countries[a][0]
            possible_countries.remove(at: a)
        }
    }
    
    func returnToCenter(){
        self.dragAmount.height = 0
        self.dragAmount.width = 0
        scale = 0
    }
}

struct UnitedStatesGame_Previews: PreviewProvider {
    static var previews: some View {
        UnitedStatesGame(GlobalUserData: userData(), choice: Int())
    }
}
