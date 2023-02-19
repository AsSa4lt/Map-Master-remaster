//
//  Unit4Inactive.swift
//  Map Master
//
//  Created by Rostyslav on 17.02.2023.
//

import Foundation
import SwiftUI

@ViewBuilder
func Unit4Inactive(GlobalUserData: userData) -> some View{
    if GlobalUserData.unit3.contains(false){
        Text("Complete Unit 3")
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundColor(Color.white)
            .padding(.top)
    }
    VStack{
        Text("Unit 4")
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundColor(Color.white)
            .padding(.top)
        RatingPanel(image1: "Gibraltar", image2: "Yemen", image3: "Cuba", text_level: "Flags", start: 10)
        RatingPanel(image1: "Laos", image2: "San Marino", image3: "Somalia", text_level: "Maps", start: 1)
        RatingPanel(image1: "Serbia", image2: "Slovenia", image3: "Albania", text_level: "Maps", start: 4)
        RatingPanel(image1: "United States", image2: "United States", image3: "United States", text_level: "USA", start: 1)
        RatingPanel(image1: "Seychelles", image2: "Tanzania", image3: "Burkina Faso", text_level: "Capitals", start: 10)
        RatingPanel(image1: "Faroes", image2: "Mayotte", image3: "Guadeloupe", text_level: "Borders", start: 7)
    }.frame(width: UIScreen.main.bounds.width*0.95).foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous)).padding(.top).opacity(0.3)
}
