//
//  ManConnector.swift
//  Map Master
//
//  Created by Rostyslav on 08.02.2023.
//

import SwiftUI
import RevenueCat

struct MainConnector: View {
    @StateObject var GlobalUserData: userData
    var body: some View {
        NavigationView{
            TabView{
                LessonsView(GlobalUserData: userData()).tabItem{
                    Image(systemName: "signature")
                    Text("Lessons").foregroundColor(.white)
                }
                Practice(GlobalUserData: userData()).tabItem{
                    Image(systemName: "brain.head.profile")
                    Text("Skill Builder").foregroundColor(.white)
                }
                
                RatingGames(GlobalUserData: userData()).tabItem{
                    Image(systemName: "person.bust")
                    Text("Rating games").foregroundColor(.white)
                }
                
                
                Settings(GlobalUserData: userData()).tabItem{
                    Image(systemName: "slider.horizontal.3")
                    Text("Settings").foregroundColor(.white)
                }
            }.colorScheme(.dark).onAppear{
                GlobalUserData.is_logged = true
                Purchases.shared.getCustomerInfo{ (customerInfo, error) in
                    GlobalUserData.is_pro = customerInfo?.entitlements.all["pro"]?.isActive == true
                }
            }
                }.navigationViewStyle(StackNavigationViewStyle()).accentColor(.white).navigationBarBackButtonHidden(true)
    }
}

struct MainConnector_Previews: PreviewProvider {
    static var previews: some View {
        MainConnector(GlobalUserData: userData())
    }
}
