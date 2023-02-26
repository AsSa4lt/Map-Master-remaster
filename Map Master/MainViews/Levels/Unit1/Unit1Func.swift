//
//  Unit1Func.swift
//  Map Master
//
//  Created by Rostyslav on 11.02.2023.
//

import Foundation
import Foundation
import SwiftUI

@ViewBuilder
func Unit1(GlobalUserData: userData) -> some View{
        VStack{
            Text("Unit 1")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.white)
                .padding(.top)
            HStack{
                NavigationLink(destination: TwoFlagLessonDrawing(GlobalUserData: GlobalUserData, answers: answers1, level: level1, unit_bool_change: GlobalUserData.$unit1[0], unit_change: GlobalUserData.$unit1Change)) {
                    RatingPanelActive(image: "Germany", active: GlobalUserData.unit1[0], text_level: "Flags 1")
                }
                NavigationLink(destination: TwoFlagLessonDrawing(GlobalUserData: GlobalUserData, answers: answers2, level: level2, unit_bool_change: GlobalUserData.$unit1[1], unit_change: GlobalUserData.$unit1Change)) {
                    RatingPanelActive(image: "Czechia", active: GlobalUserData.unit1[1], text_level: "Flags 2")
                }
                NavigationLink(destination: TwoFlagLessonDrawing(GlobalUserData: GlobalUserData, answers: answers3, level: level3, unit_bool_change: GlobalUserData.$unit1[2], unit_change: GlobalUserData.$unit1Change)) {
                    RatingPanelActive(image: "France", active: GlobalUserData.unit1[2], text_level: "Flags 3")
                }
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            
            HStack{
                NavigationLink(destination: TwoCapitalLessonDrawing(GlobalUserData: GlobalUserData, answers: answers4, level: level4, unit_bool_change: GlobalUserData.$unit1[3], unit_change: GlobalUserData.$unit1Change)) {
                    RatingPanelActive(image: "Norway", active: GlobalUserData.unit1[3], text_level: "Capitals 1")
                }
                NavigationLink(destination: TwoCapitalLessonDrawing(GlobalUserData: GlobalUserData, answers: answers5, level: level5, unit_bool_change: GlobalUserData.$unit1[4], unit_change: GlobalUserData.$unit1Change)) {
                    RatingPanelActive(image: "Italy", active: GlobalUserData.unit1[4], text_level: "Capitals 2")
                }
                NavigationLink(destination: TwoCapitalLessonDrawing(GlobalUserData: GlobalUserData, answers: answers6, level: level6, unit_bool_change: GlobalUserData.$unit1[5], unit_change: GlobalUserData.$unit1Change)) {
                    RatingPanelActive(image: "Ukraine", active: GlobalUserData.unit1[5], text_level: "Capitals 3")
                }
                
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            
            HStack{
                NavigationLink(destination: PeopleLessonDrawing(GlobalUserData: GlobalUserData, answers: answers7, level: level7, unit_bool_change: GlobalUserData.$unit1[6], unit_change: GlobalUserData.$unit1Change)) {
                    RatingPanelActive(image: "Canada", active: GlobalUserData.unit1[6], text_level: "People 1")
                }
                NavigationLink(destination: PeopleLessonDrawing(GlobalUserData: GlobalUserData, answers: answers8, level: level8, unit_bool_change: GlobalUserData.$unit1[7], unit_change: GlobalUserData.$unit1Change)) {
                    RatingPanelActive(image: "Mexico", active: GlobalUserData.unit1[7], text_level: "People 2")
                }
                NavigationLink(destination: PeopleLessonDrawing(GlobalUserData: GlobalUserData, answers: answers9, level: level9, unit_bool_change: GlobalUserData.$unit1[8], unit_change: GlobalUserData.$unit1Change)) {
                    RatingPanelActive(image: "Iceland", active: GlobalUserData.unit1[8], text_level: "People 3")
                }.frame(width: UIScreen.main.bounds.width*0.31)
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            
        }.frame(width: UIScreen.main.bounds.width*0.95).foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous)).padding(.top)
}
