//
//  RatingPanel.swift
//  Map Master
//
//  Created by Rostyslav on 16.02.2023.
//

import Foundation
import SwiftUI

@ViewBuilder
func RatingPanel(game_description: String, game_time: String, score: Int, image_name: String, color: Color) -> some View{
    VStack{
        HStack{
            VStack(alignment: .leading){
                Text("\(game_description)").font(.title).fontWeight(.heavy).foregroundColor(.white)
                Text("\(game_time)").font(.title3).fontWeight(.bold).foregroundColor(.white)
                Text("Best score: \(score)").font(.title3).fontWeight(.bold).foregroundColor(.white)
            }
            Spacer()
            Image("\(image_name)").resizable().frame(width: UIScreen.main.bounds.width*0.25, height: UIScreen.main.bounds.width*0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
        }
    }.padding(.all).frame(width: UIScreen.main.bounds.width*0.9).background(
        color.cornerRadius(15).shadow(radius: 3)).opacity(0.3)
}
