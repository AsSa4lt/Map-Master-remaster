//
//  Unit2Inactive.swift
//  Map Master
//
//  Created by Rostyslav on 16.02.2023.
//

import Foundation
import SwiftUI

@ViewBuilder
func Unit2Inactive(GlobalUserData: userData) -> some View{
    if GlobalUserData.unit1.contains(false){
        Text("Complete Unit 1")
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundColor(Color.white)
            .padding(.top)
    }else{
        Text("You ran out of hearts")
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundColor(Color.white)
            .padding(.top)
    }
    VStack{
        Text("Unit 2").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding(.top)
        RatingPanel(image1: "United States", image2: "Belgium", image3: "Sweden", text_level: "Flags", start: 4)
        RatingPanel(image1: "Cyprus", image2: "Dominica", image3: "Ireland", text_level: "Borders", start: 1)
        RatingPanel(image1: "Poland", image2: "Romania", image3: "Saudi Arabia", text_level: "Capitals", start: 4)
        RatingPanel(image1: "Senegal", image2: "Slovenia", image3: "Switzerland", text_level: "People", start: 4)
    }.frame(width: UIScreen.main.bounds.width*0.95).foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous)).opacity(0.3)
}
