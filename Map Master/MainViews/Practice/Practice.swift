//
//  Practice.swift
//  Map Master
//
//  Created by Rostyslav on 15.02.2023.
//

import SwiftUI

struct Practice: View {
    @StateObject var GlobalUserData: userData
    var body: some View {
            ZStack{
                MainBack()
                ScrollView(showsIndicators: false){
                    Text("Skill Builder").foregroundColor(Color.white).fontWeight(.heavy).font(.system(size: 47))
                    VStack{
                        Text("Flags").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding(.bottom, 5.0)
                        NavigationLink(destination: GuessingCountryFromFlagStart(GlobalUserData: GlobalUserData)) {
                            VStack{
                                HStack{
                                    Text("Guess Country").font(.title).fontWeight(.heavy).foregroundColor(.white)
                                    Spacer()
                                    Image("Canada").resizable().frame(width: UIScreen.main.bounds.width*0.25, height: UIScreen.main.bounds.width*0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                                }
                            }.padding(.all).frame(width: UIScreen.main.bounds.width*0.9).background(
                                Color.indigo.cornerRadius(15).shadow(radius: 3)
                            )
                        }
                        
                        NavigationLink(destination: GuessingFlagFromCountryStart(GlobalUserData: GlobalUserData)) {
                            VStack{
                                HStack{
                                    Text("Guess Flag").font(.title).fontWeight(.heavy).foregroundColor(.white)
                                    Spacer()
                                    Image("United Kingdom").resizable().frame(width: UIScreen.main.bounds.width*0.25, height: UIScreen.main.bounds.width*0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                                }
                            }.padding(.all).frame(width: UIScreen.main.bounds.width*0.9).background(
                                Color.indigo.cornerRadius(15).shadow(radius: 3)
                            )
                        }
                    }.padding()
                        .frame(width: UIScreen.main.bounds.width*0.95)
                        .foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
                        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
                    
                    VStack{
                        Text("Capitals").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding(.bottom, 5.0)
                        NavigationLink(destination: GuessCapitalOfCoutryStart(GlobalUserData: GlobalUserData)) {
                            VStack{
                                HStack{
                                    Text("Guess Capital").font(.title).fontWeight(.heavy).foregroundColor(.white)
                                    Spacer()
                                    Image("Mexico").resizable().frame(width: UIScreen.main.bounds.width*0.25, height: UIScreen.main.bounds.width*0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                                }
                            }.padding(.all).frame(width: UIScreen.main.bounds.width*0.9).background(
                                Color.cyan.cornerRadius(15).shadow(radius: 3)
                            )
                        }
                        
                        NavigationLink(destination: GuessCountryFromCapitalStart(GlobalUserData: GlobalUserData)) {
                            VStack{
                                HStack{
                                    Text("Guess Country").font(.title).fontWeight(.heavy).foregroundColor(.white)
                                    Spacer()
                                    Image("Ukraine").resizable().frame(width: UIScreen.main.bounds.width*0.25, height: UIScreen.main.bounds.width*0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                                }
                            }.padding(.all).frame(width: UIScreen.main.bounds.width*0.9).background(
                                Color.cyan.cornerRadius(15).shadow(radius: 3)
                            )
                        }
                    }.padding()
                        .frame(width: UIScreen.main.bounds.width*0.95)
                        .foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
                        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
                    
                    VStack{
                        Text("Borders").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding(.bottom, 5.0)
                        NavigationLink(destination: GuessCountryByBorderStart(GlobalUserData: GlobalUserData)) {
                            VStack{
                                HStack{
                                    Text("Guess Border").font(.title).fontWeight(.heavy).foregroundColor(.white)
                                    Spacer()
                                    Image("Czechia").resizable().frame(width: UIScreen.main.bounds.width*0.25, height: UIScreen.main.bounds.width*0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                                }
                            }.padding(.all).frame(width: UIScreen.main.bounds.width*0.9).background(
                                Color(hex: 0x3645).cornerRadius(15).shadow(radius: 3)
                            )
                        }
                        
                        NavigationLink(destination: GuessCountryFromBorder(GlobalUserData: GlobalUserData)) {
                            VStack{
                                HStack{
                                    Text("Guess Country").font(.title).fontWeight(.heavy).foregroundColor(.white)
                                    Spacer()
                                    Image("Finland").resizable().frame(width: UIScreen.main.bounds.width*0.25, height: UIScreen.main.bounds.width*0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                                }
                            }.padding(.all).frame(width: UIScreen.main.bounds.width*0.9).background(
                                Color(hex: 0x3645).cornerRadius(15).shadow(radius: 3)
                            )
                        }
                    }.padding()
                        .frame(width: UIScreen.main.bounds.width*0.95)
                        .foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
                        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
                    
                    VStack{
                        Text("Population").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding(.bottom, 5.0)
                        NavigationLink(destination: GuessNumberStart(GlobalUserData: GlobalUserData)) {
                            VStack{
                                HStack{
                                    Text("Guess Number").font(.title).fontWeight(.heavy).foregroundColor(.white)
                                    Spacer()
                                    Image("Iceland").resizable().frame(width: UIScreen.main.bounds.width*0.25, height: UIScreen.main.bounds.width*0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                                }
                            }.padding(.all).frame(width: UIScreen.main.bounds.width*0.9).background(
                                Color(hex: 0xb42315).cornerRadius(15).shadow(radius: 3)
                            )
                        }
                        
                        NavigationLink(destination: GuessMostPopulatedCountryStart(GlobalUserData: GlobalUserData)) {
                            VStack{
                                HStack{
                                    Text("Guess Country").font(.title).fontWeight(.heavy).foregroundColor(.white)
                                    Spacer()
                                    Image("Ireland").resizable().frame(width: UIScreen.main.bounds.width*0.25, height: UIScreen.main.bounds.width*0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                                }
                            }.padding(.all).frame(width: UIScreen.main.bounds.width*0.9).background(
                                Color(hex: 0xb42315).cornerRadius(15).shadow(radius: 3)
                            )
                        }
                    }.padding()
                        .frame(width: UIScreen.main.bounds.width*0.95)
                        .foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
                        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
                    
                    VStack{
                        Text("Maps").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding(.bottom, 5.0)
                        NavigationLink(destination: FindCountryStart(GlobalUserData: GlobalUserData)) {
                            VStack{
                                HStack{
                                    Text("Find Country").font(.title).fontWeight(.heavy).foregroundColor(.white)
                                    Spacer()
                                    Image("Angola").resizable().frame(width: UIScreen.main.bounds.width*0.25, height: UIScreen.main.bounds.width*0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                                }
                            }.padding(.all).frame(width: UIScreen.main.bounds.width*0.9).background(
                                Color(hex: 0xb423).cornerRadius(15).shadow(radius: 3)
                            )
                        }
                        
                        NavigationLink(destination: NameCountryStart(GlobalUserData: GlobalUserData)) {
                            VStack{
                                HStack{
                                    Text("Name Country").font(.title).fontWeight(.heavy).foregroundColor(.white)
                                    Spacer()
                                    Image("Argentina").resizable().frame(width: UIScreen.main.bounds.width*0.25, height: UIScreen.main.bounds.width*0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                                }
                            }.padding(.all).frame(width: UIScreen.main.bounds.width*0.9).background(
                                Color(hex: 0xb423).cornerRadius(15).shadow(radius: 3)
                            )
                        }
                        NavigationLink(destination: UnitedStatesStart(GlobalUserData: GlobalUserData)) {
                            VStack{
                                HStack{
                                    Text("US States").font(.title).fontWeight(.heavy).foregroundColor(.white)
                                    Spacer()
                                    Image("United States").resizable().frame(width: UIScreen.main.bounds.width*0.25, height: UIScreen.main.bounds.width*0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                                }
                            }.padding(.all).frame(width: UIScreen.main.bounds.width*0.9).background(
                                Color(hex: 0xb423).cornerRadius(15).shadow(radius: 3)
                            )
                        }
                    }.padding()
                        .frame(width: UIScreen.main.bounds.width*0.95)
                        .foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
                        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
                }.mask(
                    VStack(spacing: 0) {

                        // Top gradient
                        LinearGradient(gradient:
                           Gradient(
                               colors: [Color.black.opacity(0), Color.black]),
                               startPoint: .top, endPoint: .bottom
                           )
                           .frame(height: 10)

                        // Middle
                        Rectangle().fill(Color.black)

                        // Bottom gradient

                    }
                )
            }
        }
    
}

struct Practice_Previews: PreviewProvider {
    static var previews: some View {
        Practice(GlobalUserData: userData())
    }
}
