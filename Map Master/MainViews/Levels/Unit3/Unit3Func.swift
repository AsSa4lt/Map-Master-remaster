//
//  Unit3Func.swift
//  Map Master
//
//  Created by Rostyslav on 12.02.2023.
//

import Foundation
import SwiftUI

@ViewBuilder
func Unit3(GlobalUserData: userData) -> some View{
        VStack{
            Text("Unit 3")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.white)
                .padding(.top)
            HStack{
                    NavigationLink(destination: ThreeAnswerFlag(GlobalUserData: GlobalUserData, answers: answers1unit3, level: level1unit3, unit_bool_change: GlobalUserData.$unit3[0], unit_change: GlobalUserData.$unit3Change)) {
                        RatingPanelActive(image: "Moldova", active: GlobalUserData.unit3[0], text_level: "Flags 7")
                    }
                    NavigationLink(destination: ThreeAnswerFlag(GlobalUserData: GlobalUserData, answers: answers2unit3, level: level2unit3, unit_bool_change: GlobalUserData.$unit3[1], unit_change: GlobalUserData.$unit3Change)) {
                        RatingPanelActive(image: "Mongolia", active: GlobalUserData.unit3[1], text_level: "Flags 8")
                    }
                    NavigationLink(destination: ThreeAnswerFlag(GlobalUserData: GlobalUserData, answers: answers3unit3, level: level3unit3, unit_bool_change: GlobalUserData.$unit3[2], unit_change: GlobalUserData.$unit3Change)) {
                        RatingPanelActive(image: "Oman", active: GlobalUserData.unit3[2], text_level: "Flags 9")
                    }
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            HStack{
                    NavigationLink(destination: ThreeBordersLessonDrawing(GlobalUserData: GlobalUserData, answers: answers4unit3, level: level4unit3, unit_bool_change: GlobalUserData.$unit3[3], unit_change: GlobalUserData.$unit3Change)) {
                        RatingPanelActive(image: "Burundi", active: GlobalUserData.unit3[3], text_level: "Borders 4")
                    }
                    NavigationLink(destination: ThreeBordersLessonDrawing(GlobalUserData: GlobalUserData, answers: answers5unit3, level: level5unit3, unit_bool_change: GlobalUserData.$unit3[4], unit_change: GlobalUserData.$unit3Change)) {
                        RatingPanelActive(image: "Chile", active: GlobalUserData.unit3[4], text_level: "Borders 5")
                    }
                    NavigationLink(destination: ThreeBordersLessonDrawing(GlobalUserData: GlobalUserData, answers: answers6unit3, level: level6unit3, unit_bool_change: GlobalUserData.$unit3[5], unit_change: GlobalUserData.$unit3Change)) {
                        RatingPanelActive(image: "Bangladesh", active: GlobalUserData.unit3[5], text_level: "Borders 6")
                    }
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            HStack{
                    NavigationLink(destination: TwoCapitalLessonDrawing(GlobalUserData: GlobalUserData, answers: unit3answers7, level: unit3level7, unit_bool_change: GlobalUserData.$unit3[6], unit_change: GlobalUserData.$unit3Change)) {
                        RatingPanelActive(image: "Singapore", active: GlobalUserData.unit3[6], text_level: "Capitals 7")
                    }
                    NavigationLink(destination: TwoCapitalLessonDrawing(GlobalUserData: GlobalUserData, answers: unit3answers8, level: unit3level8, unit_bool_change: GlobalUserData.$unit3[7], unit_change: GlobalUserData.$unit3Change)) {
                        RatingPanelActive(image: "China", active: GlobalUserData.unit3[7], text_level: "Capitals 8")
                    }
                    NavigationLink(destination: TwoCapitalLessonDrawing(GlobalUserData: GlobalUserData, answers: unit3answers9, level: unit3level9, unit_bool_change: GlobalUserData.$unit3[8], unit_change: GlobalUserData.$unit3Change)) {
                        RatingPanelActive(image: "Angola", active: GlobalUserData.unit3[8], text_level: "Capitals 9")
                    }
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            
            HStack{
                    NavigationLink(destination: BiggerPopLessonDrawing(GlobalUserData: GlobalUserData, answers: unit3answers10, level: unit3level10, level_pop: unit3level10Pop, unit_bool_change: GlobalUserData.$unit3[9], unit_change: GlobalUserData.$unit3Change)) {
                        RatingPanelActive(image: "New Zealand", active: GlobalUserData.unit3[9], text_level: "People 7")
                    }
                    NavigationLink(destination: BiggerPopLessonDrawing(GlobalUserData: GlobalUserData, answers: unit3answers11, level: unit3level11, level_pop: unit3level11Pop, unit_bool_change: GlobalUserData.$unit3[10], unit_change: GlobalUserData.$unit3Change)) {
                        RatingPanelActive(image: "Peru", active: GlobalUserData.unit3[10], text_level: "People 8")
                    }
                    NavigationLink(destination: BiggerPopLessonDrawing(GlobalUserData: GlobalUserData, answers: unit3answers12, level: unit3level12, level_pop: unit3level12Pop, unit_bool_change: GlobalUserData.$unit3[11], unit_change: GlobalUserData.$unit3Change)) {
                        RatingPanelActive(image: "Jamaica", active: GlobalUserData.unit3[11], text_level: "People 9")
                    }
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            HStack{
                    NavigationLink(destination: Unit3Lesson13(GlobalUserData: GlobalUserData)) {
                        RatingPanelActive(image: "Thailand", active: GlobalUserData.unit3[12], text_level: "GPD 1")
                    }
                    NavigationLink(destination: Unit3Lesson14(GlobalUserData: GlobalUserData)) {
                        RatingPanelActive(image: "Jordan", active: GlobalUserData.unit3[13], text_level: "GPD 2")
                    }
                    NavigationLink(destination: Unit3Lesson15(GlobalUserData: GlobalUserData)) {
                        RatingPanelActive(image: "Western Sahara", active: GlobalUserData.unit3[14], text_level: "GPD 3")
                    }
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
        }.frame(width: UIScreen.main.bounds.width*0.95).foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous)).padding(.top)
}
