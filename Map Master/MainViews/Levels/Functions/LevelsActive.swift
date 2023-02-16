//
//  LevelsActive.swift
//  Map Master
//
//  Created by Rostyslav on 16.02.2023.
//

import Foundation
import SwiftUI

@ViewBuilder
func RatingPanelActive(image: String, active: Bool, text_level: String) -> some View{
    VStack{
        if active == false{
            Image("\(image)").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
        }else{
            Image("\(image)").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3))
        }
        Text("\(text_level)").font(.title2).fontWeight(.heavy).foregroundColor(.white)
    }.frame(width: UIScreen.main.bounds.width*0.31)
}
