//
//  Home.swift
//  Map Master
//
//  Created by Rostyslav on 08.02.2023.
//

import Foundation
import SwiftUI

@ViewBuilder
func HomeBackGround() -> some View{
    Group{
        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)), Color(#colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1))]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
        
        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)).opacity(0.6), Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)).opacity(0.3)]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
        
        ZStack {
            Circle()
                .frame(width: 300, height: 300)
                .offset(x: 150, y: -200)
                .foregroundStyle(LinearGradient(colors: [Color.green.opacity(0.6), Color.mint.opacity(0.5)], startPoint: .top, endPoint: .leading))
                .blur(radius: 7)
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .frame(width: 300, height: 300)
                .foregroundStyle(LinearGradient(colors: [Color.purple.opacity(0.6), Color.mint.opacity(0.5)], startPoint: .top, endPoint: .leading))
                .offset(x: 0, y: 200)
                .blur(radius: 3)
                .rotationEffect(.degrees(30))
            
            Circle()
                .frame(width: 200, height: 200)
                .offset(x: -100, y: -125)
                .foregroundColor(Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)).opacity(0.4))
                .blur(radius: 7)
            Circle()
                .frame(width: 250, height: 250)
                .offset(x: 100, y: 150)
                .foregroundColor(Color(red: 0.803921568627451, green: 0.4980392156862745, blue: 0.19607843137254902))
                .blur(radius: 7)
            
        }
    }
}

