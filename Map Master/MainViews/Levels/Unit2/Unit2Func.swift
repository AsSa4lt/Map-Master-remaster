//
//  Unit2.swift
//  Map Master
//
//  Created by Rostyslav on 12.02.2023.
//

import SwiftUI

@ViewBuilder
func Unit2(GlobalUserData: userData) -> some View{
    if GlobalUserData.unit1.contains(false) || GlobalUserData.hearts <= 0{
        if GlobalUserData.unit1.contains(false){
            Text("Complete Unit 1")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.white)
                .padding(.top)
        }else{
            Text("You ran out of hearts")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.white)
                .padding(.top)
        }
        VStack{
            Text("Unit 2").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding(.top)
            RatingPanel(image1: "United States", image2: "Belgium", image3: "Sweden", text_level: "Flags", start: 4)
            RatingPanel(image1: "Cyprus", image2: "Dominica", image3: "Ireland", text_level: "Borders", start: 1)
            RatingPanel(image1: "Poland", image2: "Romania", image3: "Saudi Arabia", text_level: "Capitals", start: 4)
            RatingPanel(image1: "Senegal", image2: "Slovenia", image3: "Switzerland", text_level: "People", start: 4)
        }.frame(width: UIScreen.main.bounds.width*0.95).foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous)).opacity(0.3)
    }else{
        VStack{
            Text("Unit 2")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.white)
                .padding(.top)
            HStack{
                    NavigationLink(destination: Unit2Lesson1(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit2[0] == false{
                                Image("United States").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("United States").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Flags 4").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                    NavigationLink(destination: Unit2Lesson2(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit2[1] == false{
                                Image("Belgium").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Belgium").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Flags 5").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                    NavigationLink(destination: Unit2Lesson3(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit2[2] == false{
                                Image("Sweden").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Sweden").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Flags 6").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            
            HStack{
                    NavigationLink(destination: Unit2Lesson4(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit2[3] == false{
                                Image("Cyprus").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Cyprus").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Borders 1").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                    NavigationLink(destination: Unit2Lesson5(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit2[4] == false{
                                Image("Dominica").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Dominica").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Borders 2").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                    NavigationLink(destination: Unit2Lesson6(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit2[5] == false{
                                Image("Ireland").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Ireland").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Borders 3").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            
            HStack{
                    NavigationLink(destination: Unit2Lesson7(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit2[6] == false{
                                Image("Poland").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Poland").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Capitals 4").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                    NavigationLink(destination: Unit2Lesson8(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit2[7] == false{
                                Image("Romania").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Romania").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Capitals 5").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                    NavigationLink(destination: Unit2Lesson9(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit2[8] == false{
                                Image("Saudi Arabia").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Saudi Arabia").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Capitals 6").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            
            HStack{
                    NavigationLink(destination: Unit2Lesson10(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit2[9] == false{
                                Image("Senegal").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Senegal").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("People 4").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                    NavigationLink(destination: Unit2Lesson11(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit2[10] == false{
                                Image("Slovenia").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Slovenia").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("People 5").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                    NavigationLink(destination: Unit2Lesson12(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit2[11] == false{
                                Image("Switzerland").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Switzerland").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("People 6").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
        }.frame(width: UIScreen.main.bounds.width*0.95).foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous)).padding(.top)
    }
}
