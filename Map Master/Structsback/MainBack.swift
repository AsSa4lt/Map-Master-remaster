//
//  MainBack.swift
//  Map Master
//
//  Created by Rostyslav on 10.02.2023.
//

import Foundation
import SwiftUI

@ViewBuilder
func MainBack() -> some View{
    Group{
        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
        
        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)).opacity(0.6), Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)).opacity(0.3)]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
        
        ZStack {
            Circle()
                .frame(width: 150, height: 150)
                .offset(x: -150, y: -200)
                .foregroundStyle(LinearGradient(colors: [Color.green.opacity(0.6), Color.mint.opacity(0.5)], startPoint: .top, endPoint: .leading))
                .blur(radius: 4)
            
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .frame(width: 200, height: 200)
                .foregroundStyle(LinearGradient(colors: [Color.yellow.opacity(0.9), Color.blue.opacity(1)], startPoint: .top, endPoint: .leading))
                .offset(x: 0, y: 150)
                .blur(radius: 4)
                .rotationEffect(.degrees(30))
            
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .frame(width: 100, height: 100)
                .foregroundStyle(LinearGradient(colors: [Color.mint.opacity(0.9), Color.indigo.opacity(1)], startPoint: .top, endPoint: .leading))
                .offset(x: -50, y: -300)
                .blur(radius: 4)
                .rotationEffect(.degrees(30))
            
            Circle()
                .frame(width: 200, height: 200)
                .offset(x: 100, y: 300)
                .foregroundColor(Color(hue: 0.534, saturation: 0.759, brightness: 0.955))
                .blur(radius: 4)
            
            Circle()
                .frame(width: 250, height: 250)
                .offset(x: 100, y: -50)
                .foregroundColor(Color(hue: 0.892, saturation: 0.369, brightness: 0.869))
                .blur(radius: 4)
            
        }
    }
}
