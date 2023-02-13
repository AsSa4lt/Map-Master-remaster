//
//  ManConnector.swift
//  Map Master
//
//  Created by Rostyslav on 08.02.2023.
//

import SwiftUI

struct MainConnector: View {
    @StateObject var GlobalUserData: userData
    var body: some View {
        NavigationView{
            TabView{
                
                RatingGames(GlobalUserData: userData()).tabItem{
                    Image(systemName: "calendar")
                    Text("Daily").foregroundColor(.white)
                }
                LessonsView(GlobalUserData: userData()).tabItem{
                    Image(systemName: "calendar")
                    Text("Daily").foregroundColor(.white)
                }
            }.colorScheme(.dark)
                }.navigationViewStyle(StackNavigationViewStyle()).accentColor(.white)
    }
}

struct MainConnector_Previews: PreviewProvider {
    static var previews: some View {
        MainConnector(GlobalUserData: userData())
    }
}
