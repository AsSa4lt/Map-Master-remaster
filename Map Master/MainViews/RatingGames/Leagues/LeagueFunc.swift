//
//  LeagueFunc.swift
//  Map Master
//
//  Created by Rostyslav on 15.02.2023.
//

import Foundation
import SwiftUI
@ViewBuilder
func LeagueFunc(score: Int) -> some View{
    if score < 10000{
        Text("Novice League").font(.title).fontWeight(.heavy).foregroundColor(Color(red: 0.8274509803921568, green: 0.8274509803921568, blue: 0.8274509803921568))
    }else if score < 30000{
        Text("Intermediate").font(.title).fontWeight(.heavy).foregroundColor(Color(red: 0.11764705882352941, green: 0.5647058823529412, blue: 1.0))
    }else if score < 70000{
        Text("Advanced League").font(.title).fontWeight(.heavy).foregroundColor(Color(red: 0.19607843137254902, green: 0.803921568627451, blue: 0.19607843137254902))
    }else if score < 120000{
        Text("Expert League").font(.title).fontWeight(.heavy).foregroundColor(Color.orange)
    }else if score < 180000{
        Text("Master League").font(.title).fontWeight(.heavy).foregroundColor(Color(red: 1.0, green: 0.8431372549019608, blue: 0.0))
    }else{
        Text("Ultimate League").font(.title).fontWeight(.heavy).foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0))
    }
}
