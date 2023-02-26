//
//  Unit2.swift
//  Map Master
//
//  Created by Rostyslav on 12.02.2023.
//

import SwiftUI

@ViewBuilder
func Unit2(GlobalUserData: userData) -> some View{
    VStack{
        Text("Unit 2").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding(.top)
        HStack{
            NavigationLink(destination: ThreeFlagLessonDrawing(GlobalUserData: GlobalUserData, answers: answers1unit2, level: level1unit2, unit_bool_change: GlobalUserData.$unit2[0], unit_change: GlobalUserData.$unit2Change)) {
                RatingPanelActive(image: "United States", active: GlobalUserData.unit2[0], text_level: "Flags 4")
            }
            NavigationLink(destination: ThreeFlagLessonDrawing(GlobalUserData: GlobalUserData, answers: answers2unit2, level: level2unit2, unit_bool_change: GlobalUserData.$unit2[1], unit_change: GlobalUserData.$unit2Change)) {
                RatingPanelActive(image: "Belgium", active: GlobalUserData.unit2[1], text_level: "Flags 5")
            }
            NavigationLink(destination: ThreeFlagLessonDrawing(GlobalUserData: GlobalUserData, answers: answers3unit2, level: level3unit2, unit_bool_change: GlobalUserData.$unit2[2], unit_change: GlobalUserData.$unit2Change)) {
                RatingPanelActive(image: "Sweden", active: GlobalUserData.unit2[2], text_level: "Flags 6")
            }
        }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
        
        HStack{
            NavigationLink(destination: TwoBorderLessonDrawing(GlobalUserData: GlobalUserData, answers: answers4unit2, level: level4unit2, unit_bool_change: GlobalUserData.$unit2[3], unit_change: GlobalUserData.$unit2Change)) {
                RatingPanelActive(image: "Cyprus", active: GlobalUserData.unit2[3], text_level: "Borders 1")
            }
            NavigationLink(destination: TwoBorderLessonDrawing(GlobalUserData: GlobalUserData, answers: answers5unit2, level: level5unit2, unit_bool_change: GlobalUserData.$unit2[4], unit_change: GlobalUserData.$unit2Change)) {
                RatingPanelActive(image: "Dominica", active: GlobalUserData.unit2[4], text_level: "Borders 2")
            }
            NavigationLink(destination: TwoBorderLessonDrawing(GlobalUserData: GlobalUserData, answers: answers6unit2, level: level6unit2, unit_bool_change: GlobalUserData.$unit2[5], unit_change: GlobalUserData.$unit2Change)) {
                RatingPanelActive(image: "Ireland", active: GlobalUserData.unit2[5], text_level: "Borders 3")
            }
        }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
        
        HStack{
            NavigationLink(destination: Unit2Lesson7(GlobalUserData: GlobalUserData)) {
                RatingPanelActive(image: "Poland", active: GlobalUserData.unit2[6], text_level: "Capitals 4")
            }
            NavigationLink(destination: Unit2Lesson8(GlobalUserData: GlobalUserData)) {
                RatingPanelActive(image: "Romania", active: GlobalUserData.unit2[7], text_level: "Capitals 5")
            }
            NavigationLink(destination: Unit2Lesson9(GlobalUserData: GlobalUserData)) {
                RatingPanelActive(image: "Saudi Arabia", active: GlobalUserData.unit2[8], text_level: "Capitals 6")
            }
        }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
        
        HStack{
            NavigationLink(destination: Unit2Lesson10(GlobalUserData: GlobalUserData)) {
                RatingPanelActive(image: "Senegal", active: GlobalUserData.unit2[9], text_level: "People 4")
            }
            NavigationLink(destination: Unit2Lesson11(GlobalUserData: GlobalUserData)) {
                RatingPanelActive(image: "Slovenia", active: GlobalUserData.unit2[10], text_level: "People 5")
            }
            NavigationLink(destination: Unit2Lesson12(GlobalUserData: GlobalUserData)) {
                RatingPanelActive(image: "Switzerland", active: GlobalUserData.unit2[11], text_level: "People 6")
            }
        }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
    }.frame(width: UIScreen.main.bounds.width*0.95).foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous)).padding(.top)
    
}
