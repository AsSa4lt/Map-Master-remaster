//
//  Unit4Lesson5.swift
//  Map Master
//
//  Created by Rostyslav on 13.02.2023.
//

import InteractiveMap
import SwiftUI
public let unit4lesson5: [[String]] = [
    ["AT", "Austria"],//1
    ["KZ", "Kazakhstan"],//2
    ["TR", "Turkey"],//3
    ["IN", "India"],//4
    ["CZ", "Czechia"],//5
    ["FR", "France"],//6
    ["IR", "Iran"], //7
    ["MG", "Madagascar"], //8
    ["VE", "Venezuela"], //9
    ["SK", "Slovakia"]
]

struct Unit4Lesson5: View {
    
    @StateObject var GlobalUserData: userData
    var timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    @State var answer: String = ""
    @State var task: String = ""
    @State private var clickedPath = PathData()
    @State private var scale: Int = 0
    @State var dragAmount = CGSize.zero
    @State var current: Int = 0
    @State var stateOfAnswer: Int = 0
    @State var isTapped: Bool = false
    @State var correct: Double = 0
    @State var possible_countries = find_names
    @State var pathsWrong: [PathData] = []
    @State var pathsCorrect: [PathData] = []
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
                    if stateOfAnswer == 0{
                        Text("Click on").fontWeight(.heavy).font(.largeTitle).foregroundColor(.white)
                        Text("\(unit4lesson5[current][1])").fontWeight(.heavy).font(.largeTitle).foregroundColor(.white)
                    }else if stateOfAnswer == 1{
                        Text("Click on").fontWeight(.heavy).font(.largeTitle).foregroundColor(.green)
                        Text("\(unit4lesson5[current][1])").fontWeight(.heavy).font(.largeTitle).foregroundColor(.green)
                    }else{
                        Text("Click on").fontWeight(.heavy).font(.largeTitle).foregroundColor(.red)
                        Text("\(unit4lesson5[current][1])").fontWeight(.heavy).font(.largeTitle).foregroundColor(.red)
                    }
                        CorrectProgress(correct: correct)

                        ZStack{
                            ZStack{
                                Rectangle().frame(width: UIScreen.main.bounds.width*20, height: UIScreen.main.bounds.width*20).foregroundColor(Color(hue: 0.552, saturation: 0.577, brightness: 0.968)).cornerRadius(15)
                                Rectangle().foregroundColor(.secondary).opacity(0.05).frame(width: UIScreen.main.bounds.width*20, height: UIScreen.main.bounds.width*20)
                                
                                InteractiveMap(svgName: "world-low") { pathData in // is a PathData
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
                                }.clipShape(Rectangle()).frame(width: UIScreen.main.bounds.width*0.92, height: UIScreen.main.bounds.width*0.6).cornerRadius(15)//.offset(x: dragAmount.width, y: dragAmount.height)
                             
                            }.scaleEffect(CGFloat(1+scale*2)).frame(width: UIScreen.main.bounds.width*0.92, height: UIScreen.main.bounds.width*0.6).gesture(
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
                            Stepper(value: $scale, in: 0...10) {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label@*/Text("Stepper")/*@END_MENU_TOKEN@*/
                            }.background(Color.green).cornerRadius(10).labelsHidden().foregroundColor(.white).offset(x: UIScreen.main.bounds.width*0.325,y: UIScreen.main.bounds.width*0.25)
                        }.clipShape(Rectangle()).frame(width: UIScreen.main.bounds.width*0.92, height: UIScreen.main.bounds.width*0.6).cornerRadius(15).onChange(of: scale){ _ in
                            offsetControl()
                        }
                    
                    
                    Button {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        if isTapped == false{
                            isTapped = true
                            if clickedPath.name == unit4lesson5[current][0]{
                                stateOfAnswer = 1
                                correct = correct + 0.1
                                pathsCorrect.append(PathData(name: "\(unit4lesson5[current][0])", id: "\(unit4lesson5[current][0])", path: []))
                            }else{
                                stateOfAnswer = 2
                                GlobalUserData.hearts -= 1
                                pathsWrong.append(PathData(name: "\(unit4lesson5[current][0])", id: "\(unit4lesson5[current][0])", path: []))
                            }
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                                current += 1
                                stateOfAnswer = 0
                                isTapped = false
                                if GlobalUserData.hearts <= 0{
                                    current = 10
                                }
                            }
                            if correct >= 0.7{
                                GlobalUserData.unit4[4] = true
                                GlobalUserData.unit4Change = true
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
                EndOfLesson(correct:correct, ball: ball, hearts: GlobalUserData.hearts)
            }
                    
                
                Spacer()
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
    
    
    func returnToCenter(){
        self.dragAmount.height = 0
        self.dragAmount.width = 0
        scale = 0
    }
}

struct Unit4Lesson5_Previews: PreviewProvider {
    static var previews: some View {
        Unit4Lesson5(GlobalUserData: userData())
    }
}
