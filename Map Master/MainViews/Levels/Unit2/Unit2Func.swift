//
//  Unit2.swift
//  Map Master
//
//  Created by Rostyslav on 12.02.2023.
//

import SwiftUI

@ViewBuilder
func Unit2(GlobalUserData: userData) -> some View{
    if GlobalUserData.unit1.contains(false){
        Text("Complete Unit 1")
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundColor(Color.white)
            .padding(.top)
        VStack{
            Text("Unit 2")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.white).padding(.top)
            HStack{
                VStack{
                    Image("United States").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth:3)).opacity(0.15)
                    Text("Flags 4").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                }.frame(width: UIScreen.main.bounds.width*0.31)
                VStack{
                    Image("Belgium").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth:3)).opacity(0.15)
                    Text("Flags 5").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                }.frame(width: UIScreen.main.bounds.width*0.31)
                
                VStack{
                    Image("Sweden").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth:3)).opacity(0.15)
                    Text("Flags 6").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                }.frame(width: UIScreen.main.bounds.width*0.31)
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            
            HStack{
                        VStack{
                                Image("Cyprus").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)

                            Text("Borders 1").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                        VStack{
                                Image("Dominica").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)

                            Text("Borders 2").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)

                        VStack{
                                Image("Ireland").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)

                            Text("Borders 3").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            
            HStack{
                        VStack{
                                Image("Poland").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            Text("Capitals 4").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    

                        VStack{
                                Image("Romania").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            Text("Capitals 5").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    
                        VStack{
                                Image("Saudi Arabia").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            Text("Capitals 6").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            
            HStack{
                        VStack{
                                Image("Senegal").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            Text("People 4").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                        VStack{
                                Image("Slovenia").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            Text("People 5").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                        VStack{
                                Image("Switzerland").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            Text("People 6").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
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
                if GlobalUserData.hearts > 0{
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
                }else{
                    NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit2[0] == false{
                                Image("United States").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("United States").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Flags 4").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }
                if GlobalUserData.hearts > 0{
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
                }else{
                    NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit2[1] == false{
                                Image("Belgium").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Belgium").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Flags 5").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }
                if GlobalUserData.hearts > 0{
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
                }else{
                    NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit2[2] == false{
                                Image("Sweden").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Sweden").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Flags 6").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            
            HStack{
                if GlobalUserData.hearts > 0{
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
                }else{
                    NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit2[3] == false{
                                Image("Cyprus").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Cyprus").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Borders 1").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }
                if GlobalUserData.hearts > 0{
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
                }else{
                    NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit2[4] == false{
                                Image("Dominica").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Dominica").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Borders 2").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }
                if GlobalUserData.hearts > 0{
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
                }else{
                    NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit2[5] == false{
                                Image("Ireland").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Ireland").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Borders 3").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            
            HStack{
                if GlobalUserData.hearts > 0{
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
                }else{
                    NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit2[6] == false{
                                Image("Poland").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Poland").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Capitals 4").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }
                if GlobalUserData.hearts > 0{
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
                }else{
                    NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit2[7] == false{
                                Image("Romania").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Romania").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Capitals 5").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }
                if GlobalUserData.hearts > 0{
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
                }else{
                    NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit2[8] == false{
                                Image("Saudi Arabia").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Saudi Arabia").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("Capitals 6").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            
            HStack{
                if GlobalUserData.hearts > 0{
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
                }else{
                    NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit2[9] == false{
                                Image("Senegal").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Senegal").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("People 4").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }
                if GlobalUserData.hearts > 0{
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
                }else{
                    NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit2[10] == false{
                                Image("Slovenia").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Slovenia").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("People 5").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }
                if GlobalUserData.hearts > 0{
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
                }else{
                    NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                        VStack{
                            if GlobalUserData.unit2[11] == false{
                                Image("Switzerland").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                            }else{
                                Image("Switzerland").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                            }
                            Text("People 6").font(.title2).fontWeight(.heavy).foregroundColor(.white)
                        }.frame(width: UIScreen.main.bounds.width*0.31)
                    }
                }
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
        }.frame(width: UIScreen.main.bounds.width*0.95).foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous)).padding(.top)
    }
}
