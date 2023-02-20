//
//  HeartsFunc.swift
//  Map Master
//
//  Created by Rostyslav on 20.02.2023.
//

import Foundation
import SwiftUI
@ViewBuilder
func Hearts(GlobalUserData: userData, showAnimation: Bool) -> some View{
    HStack{
        if GlobalUserData.is_pro{
            Text("\(GlobalUserData.hearts)").font(.title).fontWeight(.heavy).foregroundColor(Color(hue: 1.0, saturation: 0.718, brightness: 0.905))
            Image(systemName: "heart.fill").resizable().frame(width: 25, height: 25).foregroundColor(Color(hue: 1.0, saturation: 0.718, brightness: 0.905))
                
        }else{
            NavigationLink(destination: SubscriptionView(GlobalUserData: GlobalUserData)) {
                Text("\(GlobalUserData.hearts)").font(.title).fontWeight(.heavy).foregroundColor(Color(hue: 1.0, saturation: 0.718, brightness: 0.905))
                Image(systemName: "heart.fill").resizable().frame(width: 25, height: 25).foregroundColor(Color(hue: 1.0, saturation: 0.718, brightness: 0.905))
            }
        }
    }.scaleEffect(showAnimation ? 1.4 : 1.0)
        .animation(Animation.easeInOut(duration: 0.7).repeatForever(autoreverses: true))
}
