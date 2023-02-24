//
//  correctProgressView.swift
//  Map Master
//
//  Created by Rostyslav on 24.02.2023.
//

import Foundation
import SwiftUI
@ViewBuilder
func CorrectProgress(correct: Double) -> some View{
    if correct >= 0.7{
        ProgressView(value: correct).padding(.top, 30.0).frame(width: UIScreen.main.bounds.width*0.8).scaleEffect(x: 1, y: 4, anchor: .bottom).accentColor(.green).shadow(radius: 3)
    }else if correct < 0.7 && correct >= 0.4{
        ProgressView(value: correct).padding(.top, 30.0).frame(width: UIScreen.main.bounds.width*0.8).scaleEffect(x: 1, y: 4, anchor: .bottom).accentColor(.yellow).shadow(radius: 3)
    }else if correct < 0.4{
        ProgressView(value: correct).padding(.top, 30.0).frame(width: UIScreen.main.bounds.width*0.8).scaleEffect(x: 1, y: 4, anchor: .bottom).accentColor(.red).shadow(radius: 3)
    }
}
