//
//  LevelsPanelInactive.swift
//  Map Master
//
//  Created by Rostyslav on 16.02.2023.
//

import Foundation
import SwiftUI

@ViewBuilder
func RatingPanel(image1: String, image2: String, image3: String, text_level: String, start: Int) -> some View{
    HStack{
            VStack{
                    Image("\(image1)").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                Text("\(text_level) \(start)").font(.title2).fontWeight(.heavy).foregroundColor(.white)
            }.frame(width: UIScreen.main.bounds.width*0.31)
        
            VStack{
                    Image("\(image2)").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                Text("\(text_level) \(start+1)").font(.title2).fontWeight(.heavy).foregroundColor(.white)
            }.frame(width: UIScreen.main.bounds.width*0.31)
            VStack{
                    Image("\(image3)").resizable().frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.width * 0.15).shadow(radius: 2).cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 3)).opacity(0.15)
                Text("\(text_level) \(start+2)").font(.title2).fontWeight(.heavy).foregroundColor(.white)
            }.frame(width: UIScreen.main.bounds.width*0.31)
    }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
}
