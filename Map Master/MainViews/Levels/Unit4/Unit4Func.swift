//
//  Unit4Func.swift
//  Map Master
//
//  Created by Rostyslav on 13.02.2023.
//

import Foundation
import SwiftUI
@ViewBuilder
func Unit4(GlobalUserData: userData) -> some View{
    if GlobalUserData.unit3.contains(false){
        Text("Complete Unit 3")
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundColor(Color.white)
            .padding(.top)
        VStack{
            Text("Unit 4")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.white)
                .padding(.top)
            HStack{
                        VStack{
                                Image("Gibraltar").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            Text("Flags 10").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                        VStack{
                                Image("Yemen").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            
                            Text("Flags 11").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                        VStack{
                                Image("Cuba").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            Text("Flags 12").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            HStack{
                        VStack{
                                Image("Laos").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            Text("Maps 1").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                        VStack{
                                Image("San Marino").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            Text("Maps 2").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                        VStack{
                                Image("Somalia").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            Text("Maps 3").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            HStack{
                        VStack{
                                Image("Serbia").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            Text("Maps 4").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                        VStack{
                                Image("Slovenia").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            Text("Maps 5").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                        VStack{
                                Image("Albania").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            Text("Maps 6").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            HStack{
                        VStack{
                                Image("United States").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            Text("USA 1").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                        VStack{
                                Image("United States").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            Text("USA 2").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                        VStack{
                                Image("United States").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            Text("USA 3").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            HStack{
                        VStack{
                                Image("Seychelles").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            Text("Capitals 10").font(.title3).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                        VStack{
                                Image("Tanzania").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            Text("Capitals 11").font(.title3).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                        VStack{
                                Image("Burkina Faso").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            Text("Capitals 12").font(.title3).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            
            HStack{
                        VStack{
                                Image("Faroes").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            Text("Borders 7").font(.title3).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                        VStack{
                                Image("Mayotte").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            Text("Borders 8").font(.title3).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                        VStack{
                                Image("Guadeloupe").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            Text("Borders 9").font(.title3).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
        }.frame(width: UIScreen.main.bounds.width*0.95).foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous)).padding(.top).opacity(0.3)
    }else{
        VStack{
            Text("Unit 4")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.white)
                .padding(.top)
            HStack{
                if GlobalUserData.hearts > 0{
                    NavigationLink(destination: Unit4Lesson1(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit4[0] == false{
                                Image("Gibraltar").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Gibraltar").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Flags 10").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }else{
                    NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit4[0] == false{
                                Image("Gibraltar").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Gibraltar").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Flags 10").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }
                if GlobalUserData.hearts > 0{
                    NavigationLink(destination: Unit4Lesson2(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit4[1] == false{
                                Image("Yemen").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Yemen").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Flags 11").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }else{
                    NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit4[1] == false{
                                Image("Yemen").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Yemen").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Flags 11").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }
                if GlobalUserData.hearts > 0{
                    NavigationLink(destination: Unit4Lesson3(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit4[2] == false{
                                Image("Cuba").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Cuba").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Flags 12").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }else{
                    NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit4[2] == false{
                                Image("Cuba").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Cuba").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Flags 12").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            HStack{
                if GlobalUserData.hearts > 0{
                    NavigationLink(destination: Unit4Lesson4(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit4[3] == false{
                                Image("Laos").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Laos").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Maps 1").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }else{
                    NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit4[3] == false{
                                Image("Laos").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Laos").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Maps 1").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }
                if GlobalUserData.hearts > 0{
                    NavigationLink(destination: Unit4Lesson5(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit4[4] == false{
                                Image("San Marino").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("San Marino").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Maps 2").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }else{
                    NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit4[4] == false{
                                Image("San Marino").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("San Marino").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Maps 2").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }
                if GlobalUserData.hearts > 0{
                    NavigationLink(destination: Unit4Lesson3(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit4[5] == false{
                                Image("Somalia").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Somalia").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Maps 3").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }else{
                    NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit4[5] == false{
                                Image("Somalia").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Somalia").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Maps 3").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            HStack{
                if GlobalUserData.hearts > 0{
                    NavigationLink(destination: Unit4Lesson7(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit4[6] == false{
                                Image("Serbia").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Serbia").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Maps 4").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }else{
                    NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit4[6] == false{
                                Image("Serbia").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Serbia").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Maps 4").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }
                if GlobalUserData.hearts > 0{
                    NavigationLink(destination: Unit4Lesson8(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit4[7] == false{
                                Image("Slovenia").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Slovenia").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Maps 5").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }else{
                    NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit4[7] == false{
                                Image("Slovenia").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Slovenia").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Maps 5").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }
                if GlobalUserData.hearts > 0{
                    NavigationLink(destination: Unit4Lesson9(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit4[8] == false{
                                Image("Albania").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Albania").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Maps 6").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }else{
                    NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit4[8] == false{
                                Image("Albania").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Albania").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Maps 6").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            HStack{
                if GlobalUserData.hearts > 0{
                    NavigationLink(destination: Unit4Lesson10(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit4[9] == false{
                                Image("United States").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("United States").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("USA 1").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }else{
                    NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit4[9] == false{
                                Image("United States").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("United States").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("USA 1").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }
                if GlobalUserData.hearts > 0{
                    NavigationLink(destination: Unit4Lesson11(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit4[10] == false{
                                Image("United States").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("United States").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("USA 2").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }else{
                    NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit4[10] == false{
                                Image("United States").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("United States").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("USA 2").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }
                if GlobalUserData.hearts > 0{
                    NavigationLink(destination: Unit4Lesson12(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit4[11] == false{
                                Image("United States").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("United States").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("USA 3").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }else{
                    NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit4[11] == false{
                                Image("United States").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("United States").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("USA 3").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            HStack{
                if GlobalUserData.hearts > 0{
                    NavigationLink(destination: Unit4Lesson13(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit4[12] == false{
                                Image("Seychelles").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Seychelles").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Capitals 10").font(.title3).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }else{
                    NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit4[12] == false{
                                Image("Seychelles").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Seychelles").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Capitals 10").font(.title3).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }
                if GlobalUserData.hearts > 0{
                    NavigationLink(destination: Unit4Lesson14(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit4[13] == false{
                                Image("Tanzania").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Tanzania").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Capitals 11").font(.title3).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }else{
                    NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit4[13] == false{
                                Image("Tanzania").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Tanzania").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Capitals 11").font(.title3).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }
                if GlobalUserData.hearts > 0{
                    NavigationLink(destination: Unit4Lesson15(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit4[14] == false{
                                Image("Burkina Faso").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Burkina Faso").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Capitals 12").font(.title3).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }else{
                    NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit4[14] == false{
                                Image("Burkina Faso").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Burkina Faso").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Capitals 12").font(.title3).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            
            HStack{
                if GlobalUserData.hearts > 0{
                    NavigationLink(destination: Unit4Lesson16(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit4[15] == false{
                                Image("Faroes").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Faroes").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Borders 7").font(.title3).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }else{
                    NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit4[15] == false{
                                Image("Faroes").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Faroes").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Borders 7").font(.title3).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }
                if GlobalUserData.hearts > 0{
                    NavigationLink(destination: Unit4Lesson17(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit4[16] == false{
                                Image("Mayotte").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Mayotte").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Borders 8").font(.title3).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }else{
                    NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit4[16] == false{
                                Image("Mayotte").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Mayotte").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Borders 8").font(.title3).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }
                if GlobalUserData.hearts > 0{
                    NavigationLink(destination: Unit4Lesson15(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit4[17] == false{
                                Image("Guadeloupe").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Guadeloupe").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Borders 9").font(.title3).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }else{
                    NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit4[17] == false{
                                Image("Guadeloupe").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Guadeloupe").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Borders 9").font(.title3).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
        }.frame(width: UIScreen.main.bounds.width*0.95).foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous)).padding(.top)
}
}
