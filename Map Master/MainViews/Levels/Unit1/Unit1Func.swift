//
//  Unit1Func.swift
//  Map Master
//
//  Created by Rostyslav on 11.02.2023.
//

import Foundation
import Foundation
import SwiftUI

@ViewBuilder
func Unit1(GlobalUserData: userData) -> some View{
    VStack{
        Text("Unit 1")
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundColor(Color.white)
            .padding(.top)
        HStack{
            if GlobalUserData.hearts > 0{
                NavigationLink(destination: Lesson1(GlobalUserData: GlobalUserData)) {
                    VStack{
                        if GlobalUserData.unit1[0] == false{
                            Image("Germany").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                        }else{
                            Image("Germany").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                        }
                        Text("Flags 1").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                    }.frame(width: UIScreen.main.bounds.width*0.31)
                }
            }else{
                NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                    VStack{
                        if GlobalUserData.unit1[0] == false{
                            Image("Germany").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                        }else{
                            Image("Germany").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                        }
                        Text("Flags 1").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                    }.frame(width: UIScreen.main.bounds.width*0.31)
                }
            }
            if GlobalUserData.hearts > 0{
                NavigationLink(destination: Lesson2(GlobalUserData: GlobalUserData)) {
                    VStack{
                        if GlobalUserData.unit1[1] == false{
                            Image("Czechia").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                        }else{
                            Image("Czechia").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                        }
                        Text("Flags 2").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                    }.frame(width: UIScreen.main.bounds.width*0.31)
                }
            }else{
                NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                    VStack{
                        if GlobalUserData.unit1[1] == false{
                            Image("Czechia").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                        }else{
                            Image("Czechia").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                        }
                        Text("Flags 2").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                    }.frame(width: UIScreen.main.bounds.width*0.31)
                }
            }
            if GlobalUserData.hearts > 0{
                NavigationLink(destination: Lesson3(GlobalUserData: GlobalUserData)) {
                    VStack{
                        if GlobalUserData.unit1[2] == false{
                            Image("France").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                        }else{
                            Image("France").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                        }
                        Text("Flags 3").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                    }.frame(width: UIScreen.main.bounds.width*0.31)
                }
            }else{
                NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                    VStack{
                        if GlobalUserData.unit1[2] == false{
                            Image("France").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                        }else{
                            Image("France").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                        }
                        Text("Flags 3").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                    }.frame(width: UIScreen.main.bounds.width*0.31)
                }
            }
        }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
        
        HStack{
            if GlobalUserData.hearts > 0{
                NavigationLink(destination: Lesson4(GlobalUserData: GlobalUserData)) {
                    VStack{
                        if GlobalUserData.unit1[3] == false{
                            Image("Norway").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                        }else{
                            Image("Norway").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                        }
                        Text("Capitals 1").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                    }.frame(width: UIScreen.main.bounds.width*0.31)
                }
            }else{
                NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                    VStack{
                        if GlobalUserData.unit1[3] == false{
                            Image("Norway").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                        }else{
                            Image("Norway").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                        }
                        Text("Capitals 1").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                    }.frame(width: UIScreen.main.bounds.width*0.31)
                }
            }
            if GlobalUserData.hearts > 0{
                NavigationLink(destination: Lesson5(GlobalUserData: GlobalUserData)) {
                    VStack{
                        if GlobalUserData.unit1[4] == false{
                            Image("Italy").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                        }else{
                            Image("Italy").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                        }
                        Text("Capitals 2").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                    }.frame(width: UIScreen.main.bounds.width*0.31)
                }
            }else{
                NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                    VStack{
                        if GlobalUserData.unit1[4] == false{
                            Image("Italy").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                        }else{
                            Image("Italy").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                        }
                        Text("Capitals 2").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                    }
                }.frame(width: UIScreen.main.bounds.width*0.31)
            }
            if GlobalUserData.hearts > 0{
                NavigationLink(destination: Lesson6(GlobalUserData: GlobalUserData)) {
                    VStack{
                        if GlobalUserData.unit1[5] == false{
                            Image("Ukraine").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                        }else{
                            Image("Ukraine").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                        }
                        Text("Capitals 3").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                    }.frame(width: UIScreen.main.bounds.width*0.31)
                }
            }else{
                NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                    VStack{
                        if GlobalUserData.unit1[5] == false{
                            Image("Ukraine").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                        }else{
                            Image("Ukraine").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                        }
                        Text("Capitals 3").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                    }.frame(width: UIScreen.main.bounds.width*0.31)
                }
            }
        }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
        
        HStack{
            if GlobalUserData.hearts > 0{
                NavigationLink(destination: Lesson7(GlobalUserData: GlobalUserData)) {
                    VStack{
                        if GlobalUserData.unit1[6] == false{
                            Image("Canada").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                        }else{
                            Image("Canada").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                        }
                        Text("People 1").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                    }.frame(width: UIScreen.main.bounds.width*0.31)
                }
            }else{
                NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                    VStack{
                        if GlobalUserData.unit1[6] == false{
                            Image("Canada").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                        }else{
                            Image("Canada").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                        }
                        Text("People 1").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                    }.frame(width: UIScreen.main.bounds.width*0.31)
                }
            }
            if GlobalUserData.hearts > 0{
                NavigationLink(destination: Lesson8(GlobalUserData: GlobalUserData)) {
                    VStack{
                        if GlobalUserData.unit1[7] == false{
                                Image("Mexico").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                        }else{
                                Image("Mexico").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                        }
                        Text("People 2").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                    }.frame(width: UIScreen.main.bounds.width*0.31)
                }
            }else{
                NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                    VStack{
                        if GlobalUserData.unit1[7] == false{
                            Image("Mexico").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                        }else{
                            Image("Mexico").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                        }
                        Text("People 2").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                    }.frame(width: UIScreen.main.bounds.width*0.31)
                }
            }
            if GlobalUserData.hearts > 0{
                NavigationLink(destination: Lesson9(GlobalUserData: GlobalUserData)) {
                    VStack{
                        if GlobalUserData.unit1[8] == false{
                            Image("Iceland").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                        }else{
                            Image("Iceland").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                        }
                        Text("People 3").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                    }
                }.frame(width: UIScreen.main.bounds.width*0.31)
            }else{
                NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                    VStack{
                        if GlobalUserData.unit1[8] == false{
                            Image("Iceland").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                        }else{
                            Image("Iceland").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                        }
                        Text("People 3").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                    }.frame(width: UIScreen.main.bounds.width*0.31)
                }
            }
        }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
        
    }.frame(width: UIScreen.main.bounds.width*0.95).foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous)).padding(.top)
}
