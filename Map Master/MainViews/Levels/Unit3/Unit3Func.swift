//
//  Unit3Func.swift
//  Map Master
//
//  Created by Rostyslav on 12.02.2023.
//

import Foundation
import SwiftUI

@ViewBuilder
func Unit3(GlobalUserData: userData) -> some View{
    if GlobalUserData.unit2.contains(false) || GlobalUserData.hearts <= 0{
        if GlobalUserData.unit2.contains(false){
            Text("Complete Unit 2")
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
            Text("Unit 3")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.white)
                .padding(.top)
            HStack{
                        VStack{
                                Image("Moldova").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            Text("Flags 7").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                        VStack{
                                Image("Mongolia").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            Text("Flags 8").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                        VStack{
                                Image("Oman").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            Text("Flags 9").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            HStack{
                        VStack{
                                Image("Burundi").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            Text("Borders 4").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                        VStack{
                                Image("Chile").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            Text("Borders 5").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                        VStack{
                                Image("Bangladesh").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            Text("Borders 6").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            HStack{
                        VStack{
                                Image("Singapore").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            Text("Capitals 7").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                        VStack{
                                Image("China").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            Text("Capitals 8").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                        VStack{
                                Image("Angola").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            Text("Capitals 9").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            HStack{
                        VStack{
                                Image("New Zealand").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            Text("People 4").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                        VStack{
                                Image("Peru").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            Text("People 5").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                        VStack{
                                Image("Jamaica").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            
                            Text("People 6").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            HStack{
                VStack{
                    Image("Thailand").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                    Text("GPD 1").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                }.frame(width: UIScreen.main.bounds.width*0.31)
                VStack{
                    Image("Jordan").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                    Text("GPD 2").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                }.frame(width: UIScreen.main.bounds.width*0.31)
                VStack{
                    Image("Western Sahara").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                    Text("GPD 3").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                }.frame(width: UIScreen.main.bounds.width*0.31)
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
        }.frame(width: UIScreen.main.bounds.width*0.95).foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous)).opacity(0.3)
    }else{
        VStack{
            Text("Unit 3")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.white)
                .padding(.top)
            HStack{
                    NavigationLink(destination: Unit3Lesson1(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit3[0] == false{
                                Image("Moldova").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Moldova").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Flags 7").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                    NavigationLink(destination: Unit3Lesson2(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit3[1] == false{
                                Image("Mongolia").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Mongolia").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Flags 8").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                    NavigationLink(destination: Unit3Lesson3(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit3[2] == false{
                                Image("Oman").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Oman").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Flags 9").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }

            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            HStack{
                    NavigationLink(destination: Unit3Lesson4(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit3[3] == false{
                                Image("Burundi").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Burundi").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Borders 4").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                    NavigationLink(destination: Unit3Lesson6(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit3[4] == false{
                                Image("Chile").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Chile").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Borders 5").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                    NavigationLink(destination: Unit2Lesson3(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit3[5] == false{
                                Image("Bangladesh").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Bangladesh").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Borders 6").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            HStack{
                    NavigationLink(destination: Unit3Lesson7(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit3[6] == false{
                                Image("Singapore").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Singapore").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Capitals 7").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                    NavigationLink(destination: Unit3Lesson8(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit3[7] == false{
                                Image("China").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("China").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Capitals 8").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                    NavigationLink(destination: Unit2Lesson9(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit3[8] == false{
                                Image("Angola").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Angola").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Capitals 9").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            HStack{
                    NavigationLink(destination: Unit3Lesson10(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit3[9] == false{
                                Image("New Zealand").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("New Zealand").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("People 4").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                    NavigationLink(destination: Unit3Lesson11(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit3[10] == false{
                                Image("Peru").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Peru").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("People 5").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                    NavigationLink(destination: Unit2Lesson12(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit3[11] == false{
                                Image("Jamaica").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Jamaica").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("People 6").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            HStack{
                    NavigationLink(destination: Unit3Lesson13(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit3[12] == false{
                                Image("Thailand").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Thailand").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("GPD 1").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                    NavigationLink(destination: Unit3Lesson14(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit3[13] == false{
                                Image("Jordan").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Jordan").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("GPD 2").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                    NavigationLink(destination: Unit2Lesson12(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit3[14] == false{
                                Image("Western Sahara").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Western Sahara").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("GPD 3").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
        }.frame(width: UIScreen.main.bounds.width*0.95).foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous)).padding(.top)
    }
}
