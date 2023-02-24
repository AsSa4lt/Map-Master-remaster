//
//  EndOfLevel.swift
//  Map Master
//
//  Created by Rostyslav on 24.02.2023.
//

import Foundation
import SwiftUI
@ViewBuilder
func EndOfLesson(correct: Double, ball: Int, hearts: Int) -> some View{
    if correct >= 0.7{
        Text("You passed lesson").font(.title).fontWeight(.heavy).foregroundColor(.white)
        HappyCountryball(name: countryballs[ball][0], hat: countryballs[ball][1], left_hand: countryballs[ball][2], right_hand: countryballs[ball][3]).frame(height: UIScreen.main.bounds.width*0.7)
    }else{
        if hearts <= 0{
            Text("You ran out of hearts!").font(.title).fontWeight(.heavy).foregroundColor(Color.white)
        }else{
            Text("You didn't pass lesson").font(.title).fontWeight(.heavy).foregroundColor(.white)
        }
        SadCountryball(name: countryballs[ball][0], hat: countryballs[ball][1], left_hand: countryballs[ball][2], right_hand: countryballs[ball][3]).frame(height: UIScreen.main.bounds.width*0.7)
    }
    Spacer()
}
