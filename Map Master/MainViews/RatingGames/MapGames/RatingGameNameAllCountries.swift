//
//  RatingGameNameAllCountries.swift
//  Map Master
//
//  Created by Rostyslav on 09.02.2023.
//

import SwiftUI
import InteractiveMap

struct RatingGameNameAllCountries: View {
    @StateObject var GlobalUserData: userData
    @State var before_game: Int = 3
    @State var score: Int = 0
    var timer = Timer.publish(every: 0.015, on: .main, in: .common).autoconnect()
    @State var answer: String = ""
    @State var progress: Double = 1
    @State var timeLeft: Double = 600.00
    @State private var clickedPath: [PathData] = []
    @State var answers = all_names
    @State var games_remove: Bool = false
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
                            Text("Countries: \(score/500)/\(all_names.count)").fontWeight(.heavy).font(.largeTitle).foregroundColor(.white)
                            
                            ZStack{
                                Rectangle().frame(width: UIScreen.main.bounds.width*0.92, height: UIScreen.main.bounds.width*0.6).foregroundColor(Color(hue: 0.552, saturation: 0.577, brightness: 0.968)).cornerRadius(15)
                                InteractiveMap(svgName: "world-low") { pathData in // is a PathData
                                    if clickedPath.contains(pathData){
                                        InteractiveShape(pathData)
                                            .stroke(.black, lineWidth: 0.3)
                                        // to increase the glow amount
                                            .background(InteractiveShape(pathData).fill(Color(.green))) // filling the shapes
                                            .shadow(color: .clear , radius: 5, y: 1) // for depth
                                    }else{
                                        InteractiveShape(pathData)
                                            .stroke(.black, lineWidth: 0.3)
                                        // to increase the glow amount
                                            .background(InteractiveShape(pathData).fill(Color(.white))) // filling the shapes
                                            .shadow(color: .clear , radius: 5, y: 1) // for depth
                                    }
                                    
                                }.frame(width: UIScreen.main.bounds.width*0.92, height: UIScreen.main.bounds.width*0.6)
                            }.frame(width: UIScreen.main.bounds.width*0.92, height: UIScreen.main.bounds.width*0.6)
                            if #available(iOS 16.0, *) {
                                TextField("Enter country", text: $answer).multilineTextAlignment(.center).font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/).fontWeight(/*@START_MENU_TOKEN@*/.heavy/*@END_MENU_TOKEN@*/).foregroundColor(.white)
                            } else {
                                // Fallback on earlier versions
                                TextField("Enter country", text: $answer).multilineTextAlignment(.center).font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/).foregroundColor(.white)
                            }
                            Button {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                                var where_del = -1
                                if answer != ""{
                                    for i in 0..<answers.count{
                                        for j in 0..<answers[i].count{
                                            if answer == answers[i][j]{
                                                clickedPath.append(PathData(name: "\(answers[i][0])", id: "\(answers[i][0])", path: []))
                                                score = score + 200
                                                where_del = i
                                            }
                                        }
                                    }
                                    if where_del != -1{
                                        answers.remove(at: where_del)
                                    }
                                }
                                if answers.count == 0 {
                                    timeLeft = 0
                                }
                                answer = ""
                            }label: {
                                Color.indigo.overlay(
                                    Text("Submit").font(.title).fontWeight(.heavy).foregroundColor(.white)
                                ).frame(width: UIScreen.main.bounds.width*0.4, height: UIScreen.main.bounds.width*0.2).cornerRadius(20).overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.orange, lineWidth: 4)).shadow(radius: 2).padding(.vertical)
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
                score = 0
            }.onReceive(timer){ _ in
                if before_game <= 0{
                    if timeLeft > 0{
                        timeLeft = timeLeft - 0.015
                    }else{
                        if score > GlobalUserData.rating_name_country{
                            GlobalUserData.rating_name_country = score
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                            GlobalUserData.games_left -= 1
                        }
                    }
                }
            }
        }
    }
}

struct RatingGameNameAllCountries_Previews: PreviewProvider {
    static var previews: some View {
        RatingGameNameAllCountries(GlobalUserData: userData())
    }
}
