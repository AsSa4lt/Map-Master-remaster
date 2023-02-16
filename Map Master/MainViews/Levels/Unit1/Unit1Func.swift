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
                NavigationLink(destination: Lesson1(GlobalUserData: GlobalUserData)) {
                    RatingPanelActive(image: "Germany", active: GlobalUserData.unit1[0], text_level: "Flags 1")
                }
                NavigationLink(destination: Lesson2(GlobalUserData: GlobalUserData)) {
                    RatingPanelActive(image: "Czechia", active: GlobalUserData.unit1[1], text_level: "Flags 2")
                }
                NavigationLink(destination: Lesson3(GlobalUserData: GlobalUserData)) {
                    RatingPanelActive(image: "France", active: GlobalUserData.unit1[2], text_level: "Flags 3")
                }
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            
            HStack{
                NavigationLink(destination: Lesson4(GlobalUserData: GlobalUserData)) {
                    RatingPanelActive(image: "Norway", active: GlobalUserData.unit1[3], text_level: "Capitals 1")
                }
                NavigationLink(destination: Lesson5(GlobalUserData: GlobalUserData)) {
                    RatingPanelActive(image: "Italy", active: GlobalUserData.unit1[4], text_level: "Capitals 2")
                }
                NavigationLink(destination: Lesson6(GlobalUserData: GlobalUserData)) {
                    RatingPanelActive(image: "Ukraine", active: GlobalUserData.unit1[5], text_level: "Capitals 3")
                }
                
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            
            HStack{
                NavigationLink(destination: Lesson7(GlobalUserData: GlobalUserData)) {
                    RatingPanelActive(image: "Canada", active: GlobalUserData.unit1[6], text_level: "People 1")
                }
                NavigationLink(destination: Lesson8(GlobalUserData: GlobalUserData)) {
                    RatingPanelActive(image: "Mexico", active: GlobalUserData.unit1[7], text_level: "People 2")
                }
                NavigationLink(destination: Lesson9(GlobalUserData: GlobalUserData)) {
                    RatingPanelActive(image: "Iceland", active: GlobalUserData.unit1[8], text_level: "People 3")
                }.frame(width: UIScreen.main.bounds.width*0.31)
            }.padding(.bottom).frame(width: UIScreen.main.bounds.width*0.93)
            
        }.frame(width: UIScreen.main.bounds.width*0.95).foregroundStyle(LinearGradient(colors: [.blue, .indigo], startPoint: .top, endPoint: .bottom))
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous)).padding(.top)
}
