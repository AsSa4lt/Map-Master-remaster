//
//  CreatePanelPractise.swift
//  Map Master
//
//  Created by Rostyslav on 16.02.2023.
//

import Foundation
import SwiftUI
@ViewBuilder
func PanelPractice(text_game: String, image_game: String, color_game: Color) -> some View{
    VStack{
        HStack{
            Text("\(text_game)").font(.title).fontWeight(.heavy).foregroundColor(.white)
            Spacer()
            Image("\(image_game)").resizable().frame(width: UIScreen.main.bounds.width*0.25, height: UIScreen.main.bounds.width*0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
        }
    }.padding(.all).frame(width: UIScreen.main.bounds.width*0.9).background(
        color_game.cornerRadius(15).shadow(radius: 3)
    )
}
