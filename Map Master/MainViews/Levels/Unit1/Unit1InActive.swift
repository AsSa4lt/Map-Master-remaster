//
//  Unit1InActive.swift
//  Map Master
//
//  Created by Rostyslav on 16.02.2023.
//

import Foundation
import SwiftUI
@ViewBuilder
func Unit1Inactive(GlobalUserData: userData) -> some View{
    Text("You ran out of hearts").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding(.top)
    VStack{
        Text("Unit 1")
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundColor(Color.white)
            .padding(.top)
        RatingPanel(image1: "Germany", image2: "Czechia", image3: "France", text_level: "Flags", start: 1)
        RatingPanel(image1: "Norway", image2: "Italy", image3: "Ukraine", text_level: "Capitals", start: 1)
        RatingPanel(image1: "Canada", image2: "Mexico", image3: "Iceland", text_level: "People", start: 1)
    }.frame(width: UIScreen.main.bounds.width*0.95).foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous)).padding(.top).opacity(0.3)
}
