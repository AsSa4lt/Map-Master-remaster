//
//  Unit3Inactive.swift
//  Map Master
//
//  Created by Rostyslav on 17.02.2023.
//

import Foundation
import SwiftUI

@ViewBuilder
func Unit3Inactive(GlobalUserData: userData) -> some View{
    if GlobalUserData.unit2.contains(false){
        Text("Complete Unit 2")
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundColor(Color.white)
            .padding(.top)
    }
    VStack{
        Text("Unit 3")
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundColor(Color.white)
            .padding(.top)
        RatingPanel(image1: "Moldova", image2: "Mongolia", image3: "Oman", text_level: "Flags", start: 7)
        RatingPanel(image1: "Burundi", image2: "Chile", image3: "Bangladesh", text_level: "Borders", start: 4)
        RatingPanel(image1: "Singapore", image2: "China", image3: "Angola", text_level: "Capitals", start: 7)
        RatingPanel(image1: "New Zealand", image2: "Peru", image3: "Jamaica", text_level: "People", start: 4)
        RatingPanel(image1: "Thailand", image2: "Jordan", image3: "Western Sahara", text_level: "GPD", start: 1)

    }.frame(width: UIScreen.main.bounds.width*0.95).foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous)).opacity(0.3)
    
}
