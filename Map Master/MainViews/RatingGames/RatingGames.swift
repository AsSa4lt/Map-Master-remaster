//
//  MainScree.swift
//  Map Master
//
//  Created by Rostyslav on 31.01.2023.
//

import SwiftUI

struct RatingGames: View {
    @StateObject var GlobalUserData: userData
    @State var overall_rating: Int = 0
    var body: some View {
            ZStack{
                HomeBackGround()
                ScrollView(showsIndicators: false){
                    Text("Rating games").foregroundColor(Color.white).fontWeight(.heavy).font(.system(size: 47))
                       
                    NavigationLink(destination: Leagues(GlobalUserData: GlobalUserData)) {
                        VStack{
                            HStack{
                                Text("Rating: ").font(.title).fontWeight(.heavy).foregroundColor(.white)
                                Text("\(overall_rating)").font(.title).fontWeight(.heavy).foregroundColor(.white)
                                Image(systemName: "questionmark.app.fill").resizable().frame(width: 20, height: 20).foregroundColor(.white)
                                Spacer()
                            }.frame(width: UIScreen.main.bounds.width*0.95)
                            
                            HStack{
                                Text("League: ").font(.title).fontWeight(.heavy).foregroundColor(.white)
                                LeagueFunc(score: overall_rating)
                                Spacer()
                            }.frame(width: UIScreen.main.bounds.width*0.95)
                        }
                    }
                    VStack{
                        Text("Map games").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding(.bottom, 5.0)
                        NavigationLink(destination: RatingGameNameAllCountries(GlobalUserData: GlobalUserData)) {
                            VStack{
                                HStack{
                                    VStack(alignment: .leading){
                                        Text("Name Country").font(.title).fontWeight(.heavy).foregroundColor(.white)
                                        Text("Time: 10 minutes").font(.title3).fontWeight(.bold).foregroundColor(.white)
                                        Text("Best score: \(GlobalUserData.rating_name_country)").font(.title3).fontWeight(.bold).foregroundColor(.white)
                                    }
                                    Spacer()
                                    Image("Greece").resizable().frame(width: UIScreen.main.bounds.width*0.25, height: UIScreen.main.bounds.width*0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                                }
                            }.padding(.all).frame(width: UIScreen.main.bounds.width*0.9).background(
                                LinearGradient(colors: [Color(hex: 0x3645), Color(hex: 0x3645)], startPoint: .top, endPoint: .bottom).cornerRadius(15).shadow(radius: 3)
                            )
                        }
                        
                        NavigationLink(destination: RatingGameFindCountries(GlobalUserData: GlobalUserData)) {
                            VStack{
                                HStack{
                                    VStack(alignment: .leading){
                                        Text("Find Country").font(.title).fontWeight(.heavy).foregroundColor(.white)
                                        Text("Time: 10 minutes").font(.title3).fontWeight(.bold).foregroundColor(.white)
                                        Text("Best score: \(GlobalUserData.rating_find_country)").font(.title3).fontWeight(.bold).foregroundColor(.white)
                                    }
                                    Spacer()
                                    Image("Greenland").resizable().frame(width: UIScreen.main.bounds.width*0.25, height: UIScreen.main.bounds.width*0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                                }
                            }.padding(.all).frame(width: UIScreen.main.bounds.width*0.9).background(
                                LinearGradient(colors: [Color(hex: 0x3645), Color(hex: 0x3645)], startPoint: .top, endPoint: .bottom).cornerRadius(15).shadow(radius: 3)
                            )
                        }
                        
                        NavigationLink(destination: RatingGameUSStates(GlobalUserData: GlobalUserData)) {
                            VStack{
                                HStack{
                                    VStack(alignment: .leading){
                                        Text("US States").font(.title).fontWeight(.heavy).foregroundColor(.white)
                                        Text("Time: 3 minutes").font(.title3).fontWeight(.bold).foregroundColor(.white)
                                        Text("Best score: \(GlobalUserData.rating_find_states)").font(.title3).fontWeight(.bold).foregroundColor(.white)
                                    }
                                    Spacer()
                                    Image("United States").resizable().frame(width: UIScreen.main.bounds.width*0.25, height: UIScreen.main.bounds.width*0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                                }
                            }.padding(.all).frame(width: UIScreen.main.bounds.width*0.9).background(
                                LinearGradient(colors: [Color(hex: 0x3645), Color(hex: 0x3645)], startPoint: .top, endPoint: .bottom).cornerRadius(15).shadow(radius: 3)
                            )
                        }
                        
                        
                    }.padding()
                        .frame(width: UIScreen.main.bounds.width*0.95)
                        .foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
                        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
                    
                    VStack{
                        Text("Flags").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding(.bottom, 5.0)
                        NavigationLink(destination: RatingGameFlagOfCountry(GlobalUserData: GlobalUserData)) {
                            VStack{
                                HStack{
                                    VStack(alignment: .leading){
                                        Text("Guess Country").font(.title).fontWeight(.heavy).foregroundColor(.white)
                                        Text("Time: 60 seconds").font(.title3).fontWeight(.bold).foregroundColor(.white)
                                        Text("Best score: \(GlobalUserData.rating_flag_country)").font(.title3).fontWeight(.bold).foregroundColor(.white)
                                    }
                                    Spacer()
                                    Image("Canada").resizable().frame(width: UIScreen.main.bounds.width*0.25, height: UIScreen.main.bounds.width*0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                                }
                            }.padding(.all).frame(width: UIScreen.main.bounds.width*0.9).background(
                                Color.cyan.cornerRadius(15).shadow(radius: 3)
                            )
                        }
                        
                        NavigationLink(destination: RatingGameFlagOfCountry(GlobalUserData: GlobalUserData)) {
                            VStack{
                                HStack{
                                    VStack(alignment: .leading){
                                        Text("Guess Flag").font(.title).fontWeight(.heavy).foregroundColor(.white)
                                        Text("Time: 60 seconds").font(.title3).fontWeight(.bold).foregroundColor(.white)
                                        Text("Best score: \(GlobalUserData.rating_country_flag)").font(.title3).fontWeight(.bold).foregroundColor(.white)
                                    }
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
                        Text("Capitals").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding(.bottom, 5.0)
                        NavigationLink(destination: RatingGameCountryOfCapital(GlobalUserData: GlobalUserData)) {
                            VStack{
                                HStack{
                                    VStack(alignment: .leading){
                                        Text("Guess Country").font(.title).fontWeight(.heavy).foregroundColor(.white)
                                        Text("Time: 90 seconds").font(.title3).fontWeight(.bold).foregroundColor(.white)
                                        Text("Best score: \(GlobalUserData.rating_capital_country)").font(.title3).fontWeight(.bold).foregroundColor(.white)
                                    }
                                    Spacer()
                                    Image("Czechia").resizable().frame(width: UIScreen.main.bounds.width*0.25, height: UIScreen.main.bounds.width*0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                                }
                            }.padding(.all).frame(width: UIScreen.main.bounds.width*0.9).background(
                                Color.indigo.cornerRadius(15).shadow(radius: 3)
                            )
                        }
                        
                        NavigationLink(destination: RatingGameCapitalOfCountry(GlobalUserData: GlobalUserData)) {
                            VStack{
                                HStack{
                                    VStack(alignment: .leading){
                                        Text("Guess Capital").font(.title).fontWeight(.heavy).foregroundColor(.white)
                                        Text("Time: 90 seconds").font(.title3).fontWeight(.bold).foregroundColor(.white)
                                        Text("Best score: \(GlobalUserData.rating_country_capital)").font(.title3).fontWeight(.bold).foregroundColor(.white)
                                    }
                                    Spacer()
                                    Image("Mexico").resizable().resizable().frame(width: UIScreen.main.bounds.width*0.25, height: UIScreen.main.bounds.width*0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                                }
                            }.padding(.all).frame(width: UIScreen.main.bounds.width*0.9).background(
                                Color.indigo.cornerRadius(15).shadow(radius: 3)
                            )
                        }
                        
                        
                    }.padding().frame(width: UIScreen.main.bounds.width*0.95).foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
                        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
                    
                    VStack{
                        Text("Borders").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding(.bottom, 5.0)
                        NavigationLink(destination: RatingGameCountryOfBorder(GlobalUserData: GlobalUserData)) {
                            VStack{
                                HStack{
                                    VStack(alignment: .leading){
                                        Text("Guess Country").font(.title).fontWeight(.heavy).foregroundColor(.white)
                                        Text("Time: 120 seconds").font(.title3).fontWeight(.bold).foregroundColor(.white)
                                        Text("Best score: \(GlobalUserData.rating_border_country)").font(.title3).fontWeight(.bold).foregroundColor(.white)
                                    }
                                    Spacer()
                                    Image("France").resizable().frame(width: UIScreen.main.bounds.width*0.25, height: UIScreen.main.bounds.width*0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                                }
                            }.padding(.all).frame(width: UIScreen.main.bounds.width*0.9).background(
                                Color(hex: 0xb42315).cornerRadius(15).shadow(radius: 3)
                            )
                        }
                        
                        NavigationLink(destination: RatingGameBorderOfCountry(GlobalUserData: GlobalUserData)) {
                            VStack{
                                HStack{
                                    VStack(alignment: .leading){
                                        Text("Guess Border").font(.title).fontWeight(.heavy).foregroundColor(.white)
                                        Text("Time: 120 seconds").font(.title3).fontWeight(.bold).foregroundColor(.white)
                                        Text("Best score: \(GlobalUserData.rating_country_border)").font(.title3).fontWeight(.bold).foregroundColor(.white)
                                    }
                                    Spacer()
                                    Image("Denmark").resizable().frame(width: UIScreen.main.bounds.width*0.25, height: UIScreen.main.bounds.width*0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
                                }
                            }.padding(.all).frame(width: UIScreen.main.bounds.width*0.9).background(
                                Color(hex: 0xb42315).cornerRadius(15).shadow(radius: 3)
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
            }.onAppear{
                overall_rating = GlobalUserData.rating_border_country + GlobalUserData.rating_country_border + GlobalUserData.rating_country_flag + GlobalUserData.rating_flag_country + GlobalUserData.rating_capital_country + GlobalUserData.rating_country_capital + GlobalUserData.rating_name_country + GlobalUserData.rating_find_country + GlobalUserData.rating_find_states
            }
    }
}

struct RatingGames_Previews: PreviewProvider {
    static var previews: some View {
        RatingGames(GlobalUserData: userData())
    }
}
