//
//  LessonsBackGround.swift
//  Map Master
//
//  Created by Rostyslav on 11.02.2023.
//

import Foundation
import SwiftUI

@ViewBuilder
func LessonsBack() -> some View{
    Group{
        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
        
        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)).opacity(0.6), Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)).opacity(0.3)]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
        
        ZStack {
            Image("Canada").resizable().frame(width: 200, height: 130)
                .offset(x: 10, y: -100)
                .blur(radius: 8)
                .rotationEffect(.degrees(90)).opacity(0.4)
            
            Image("Ukraine").resizable().frame(width: 200, height: 130)
                .offset(x: 50, y: 200)
                .blur(radius: 7)
                .rotationEffect(.degrees(30)).opacity(0.7)
            
            Image("Germany").resizable().frame(width: 150, height: 100)
                .offset(x: -40, y: -20)
                .blur(radius: 7)
                .rotationEffect(.degrees(-60)).opacity(0.4)
            
            Image("Poland").resizable().frame(width: 200, height: 130)
                .offset(x: -10, y: -200)
                .blur(radius: 7)
                .opacity(0.3).rotationEffect(.degrees(-30))
            
            Image("Czechia").resizable().frame(width: 150, height: 100)
                .offset(x: -50, y: -300)
                .blur(radius: 7)
                .rotationEffect(.degrees(30)).opacity(0.4)
            
            
        }
        
    }
}
