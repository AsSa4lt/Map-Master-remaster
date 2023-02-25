//
//  EndPractice.swift
//  Map Master
//
//  Created by Rostyslav on 25.02.2023.
//

import Foundation
import SwiftUI

@ViewBuilder
func EndPractice(score: Int, ball: Int) -> some View{
    Spacer()
    Text("Score").fontWeight(.heavy).font(.system(size: 70)).foregroundColor(.white)
    Text("\(score)").fontWeight(.heavy).font(.system(size: 80)).foregroundColor(.white)
    HappyCountryball(name: countryballs[ball][0], hat: countryballs[ball][1], left_hand: countryballs[ball][2], right_hand: countryballs[ball][3]).frame(height: UIScreen.main.bounds.width*0.7)
}
