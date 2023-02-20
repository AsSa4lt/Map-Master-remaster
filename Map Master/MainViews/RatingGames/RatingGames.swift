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
    let calendar = Calendar.current
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
            ZStack{
                HomeBackGround()
                ScrollView(showsIndicators: false){
                    Text("Rating games").foregroundColor(Color.white).fontWeight(.heavy).font(.system(size: 47))
                    if GlobalUserData.is_pro{
                        HStack{
                            Text("Games left today: ").font(.title).fontWeight(.heavy).foregroundColor(.white)
                            Text("\(GlobalUserData.games_left)").font(.title).fontWeight(.heavy).foregroundColor(.white)
                            Spacer()
                        }.padding(.top, 1.0).frame(width: UIScreen.main.bounds.width*0.95)
                    }else{
                        NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                            HStack{
                                Text("Games left today: ").font(.title).fontWeight(.heavy).foregroundColor(.white)
                                Text("\(GlobalUserData.games_left)").font(.title).fontWeight(.heavy).foregroundColor(.white)
                                Spacer()
                            }.padding(.top, 1.0).frame(width: UIScreen.main.bounds.width*0.95)
                        }
                    }
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
                    }.onAppear{
                        reniew()
                        if GlobalUserData.minus_game{
                            GlobalUserData.games_left -= 1
                            GlobalUserData.minus_game = false
                            GlobalUserData.setGamesLeft()
                        }
                    }.onReceive(timer) { _ in
                        reniew()
                    }
                    if GlobalUserData.games_left > 0{
                        RatingGamesActive(GlobalUserData: GlobalUserData)
                    }else{
                        RatingGamesInactive(GlobalUserData: GlobalUserData)
                    }
                }.mask(
                    VStack(spacing: 0) {
                        LinearGradient(gradient:
                           Gradient(
                               colors: [Color.black.opacity(0), Color.black]),
                               startPoint: .top, endPoint: .bottom
                           )
                           .frame(height: 10)
                        Rectangle().fill(Color.black)
                    }
                 )
            }.onAppear{
                overall_rating = GlobalUserData.rating_border_country + GlobalUserData.rating_country_border + GlobalUserData.rating_country_flag + GlobalUserData.rating_flag_country + GlobalUserData.rating_capital_country + GlobalUserData.rating_country_capital + GlobalUserData.rating_name_country + GlobalUserData.rating_find_country + GlobalUserData.rating_find_states
            }
    }
    func reniew(){
        if GlobalUserData.games_left < 0{
            GlobalUserData.games_left = 0
        }
        let components = calendar.dateComponents([.day], from: Date())
            if components.day! != GlobalUserData.last_day{
                if GlobalUserData.is_pro == false{
                    GlobalUserData.last_day = components.day!
                    GlobalUserData.games_left = 10
                }else{
                    GlobalUserData.last_day = components.day!
                    GlobalUserData.games_left = 30
                }
            }
    }
}

struct RatingGames_Previews: PreviewProvider {
    static var previews: some View {
        RatingGames(GlobalUserData: userData())
    }
}
